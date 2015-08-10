<?php

class ProyectoController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('autocompletesearch'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('index','view','create','update',
													'admin','delete', 'cambiar','usuario','subir','upload','otros','passa','imprimir'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$doctos = Documento::model()->findAll("proyecto_did = " . $id);
		$this->render('view',array(
			'model'=>$this->loadModel($id),
			'doctos'=>$doctos,
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Proyecto;
		

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Proyecto']))
		{
			$model->attributes=$_POST['Proyecto'];
			if($model->save()){
				
				foreach($_POST["Involucrados"] as $usuario){
					$proyectoUsuario = new UsuariosProyecto;
					$proyectoUsuario->usuario_did = $usuario;
					$proyectoUsuario->proyecto_did = $model->id;
					$proyectoUsuario->estatus_did = 1;
					$proyectoUsuario->save();
				}
				$this->redirect(array('view','id'=>$model->id));
			}
				
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Proyecto']))
		{

			$model->attributes=$_POST['Proyecto'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		if(Yii::app()->request->isPostRequest)
		{
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if(!isset($_GET['ajax']))
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
		else
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$usuarioActual = Usuario::model()->obtenerUsuarioActual();
		if($usuarioActual->tipoUsuario_did == 1){
			$proyectos = Proyecto::model()->findAll(array("order" => "categoria_did ASC"));
		} else {
			$proyectos = Proyecto::model()->findAll(array("order" => "categoria_did ASC", "condition"=>"estatus_did = 1 && responsable_did = $usuarioActual->id"));
		}
		$this->render('index',array('proyectos'=>$proyectos,'usuarioActual'=>$usuarioActual));
	}
	
	public function actionUsuario()
	{
		$proyectos = Proyecto::model()->findAll("responsable_did = " . $_GET["usuario"]);
		$this->render('usuario',array('proyectos'=>$proyectos));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Proyecto('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Proyecto']))
			$model->attributes=$_GET['Proyecto'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=Proyecto::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='proyecto-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
	
	public function actionAutocompletesearch()
	{
	    $q = "%". $_GET['term'] ."%";
	 	$result = array();
	    if (!empty($q))
	    {
			$criteria=new CDbCriteria;
			$criteria->select=array('id', "CONCAT_WS(' ',nombre) as nombre");
			$criteria->condition="lower(CONCAT_WS(' ',nombre)) like lower(:nombre) ";
			$criteria->params=array(':nombre'=>$q);
			$criteria->limit='10';
	       	$cursor = Proyecto::model()->findAll($criteria);
			foreach ($cursor as $valor)	
				$result[]=Array('label' => $valor->nombre,  
				                'value' => $valor->nombre,
				                'id' => $valor->id, );
	    }
	    echo json_encode($result);
	    Yii::app()->end();
	}
	
	public function actionCambiar($id){
		if(isset($_GET["estatus"])){
			$model = $this->loadModel($id);
			$model->estatus_did = $_GET["estatus"];
			if($model->save()){
				if($model->estatus_did == 1)
					Yii::app()->user->setFlash("info","Se activó el proyecto: " . $model->nombre . ".");
				else
					Yii::app()->user->setFlash("warning","Se desactivó el proyecto: " . $model->nombre . ".");
				Yii::app()->db->createCommand("insert into Actividad (mensaje, usuario) Values ('Cambió de Estatus del proyecto " . $model->nombre . " a " . $model->estatus->nombre . "', '" . Yii::app()->user->name . "')")->execute();
				$this->redirect(array("proyecto/index"));
			}
		}
	}
	
	public function actionSubir($id){
		$proyecto = Proyecto::model()->findByPK($id);
		$model = new XUploadForm;
		$this->render("subir",array(
									"proyecto"=>$proyecto,
									"model"=>$model,
									));
	}
	
	public function actionOtros(){
		$usuarioActual = Usuario::model()->obtenerUsuarioActual();
		$proyectosExternos = Proyecto::model()->findAll("estatus_did = 1 && responsable_did != " . $usuarioActual->id);
		$this->render('otrosProyectos',array(
			'proyectosExternos'=>$proyectosExternos,
		));		
	}
	
	public function actionUpload($id) {
	try{
		 Yii::import( "xupload.models.XUploadForm" );
    //Here we define the paths where the files will be stored temporarily
    $path = realpath( Yii::app( )->getBasePath( )."/../images/uploads/tmp/" )."/";
    $publicPath = Yii::app( )->getBaseUrl( )."/../images/uploads/tmp/";
 
    //This is for IE which doens't handle 'Content-type: application/json' correctly
    header( 'Vary: Accept' );
    if( isset( $_SERVER['HTTP_ACCEPT'] ) 
        && (strpos( $_SERVER['HTTP_ACCEPT'], 'application/json' ) !== false) ) {
        header( 'Content-type: application/json' );
    } else {
        header( 'Content-type: text/plain' );
    }
 
    //Here we check if we are deleting and uploaded file
    if( isset( $_GET["_method"] ) ) {
        if( $_GET["_method"] == "delete" ) {
            if( $_GET["file"][0] !== '.' ) {
                $file = $path.$_GET["file"];
                if( is_file( $file ) ) {
                    unlink( $file );
                }
            }
            echo json_encode( true );
        }
    } 
    else 
    {
      $model = new XUploadForm;
      $model->file = CUploadedFile::getInstance( $model, 'file' );
      //We check that the file was successfully uploaded
      if( $model->file !== null ) {
          //Grab some data
          $model->mime_type = $model->file->getType( );
          $model->size = $model->file->getSize( );
          $model->name = $model->file->getName( );
          //(optional) Generate a random name for our file
          $filename = microtime( ).$model->name;
          $filename .= ".".$model->file->getExtensionName( );
          if( $model->validate( ) ) {
          		
              //Move our file to our temporary dir
              if($model->file->saveAs( $path.$filename )){
              	$modelDocto = new Documento;
            		$modelDocto->ruta = $filename;
            		$modelDocto->proyecto_did = $id;
            		$modelDocto->estatus_did = 1;
            		$modelDocto->save();
              }
							chmod( $path.$filename, 0777 );
              //here you can also generate the image versions you need 
              //using something like PHPThumb


              //Now we need to save this path to the user's session
              if( Yii::app( )->user->hasState( 'images' ) ) {
                  $userImages = Yii::app( )->user->getState( 'images' );
              } else {
                  $userImages = array();
              }
               $userImages[] = array(
                  "path" => $path.$filename,
                  //the same file or a thumb version that you generated
                  "thumb" => $path.$filename,
                  "filename" => $filename,
                  'size' => $model->size,
                  'mime' => $model->mime_type,
                  'name' => $model->name,
              );
              Yii::app( )->user->setState( 'images', $userImages );

              //Now we need to tell our widget that the upload was succesfull
              //We do so, using the json structure defined in
              // https://github.com/blueimp/jQuery-File-Upload/wiki/Setup
              echo json_encode( array( array(
                      "name" => $model->name,
                      "type" => $model->mime_type,
                      "size" => $model->size,
                      "url" => $publicPath.$filename,
                      "thumbnail_url" => $publicPath."thumbs/$filename",
                      "delete_url" => $this->createUrl( "upload", array(
                          "_method" => "delete",
                          "file" => $filename
                      ) ),
                      "delete_type" => "POST"
                  ) ) );
          } else {
              //If the upload failed for some reason we log some data and let the widget know
              echo json_encode( array( 
                  array( "error" => $model->getErrors( 'file' ),
              ) ) );
              Yii::log( "XUploadAction: ".CVarDumper::dumpAsString( $model->getErrors( ) ),
                  CLogger::LEVEL_ERROR, "xupload.actions.XUploadAction" 
              );
          }
      } else {
          throw new CHttpException( 500, "Could not upload file" );
      }
		}
		}catch(Exception $e){
			print_r($e);
		}
  }

 public function actionImprimir($id)
	{
		$proyecto=Proyecto::model()->findByPk($id);
		$actividades=DetalleProyecto::model()->findAll('proyecto_did='.$id);
		$this->layout="pdf";
		$mPDF1 = Yii::app()->ePdf->mpdf();
		$stylesheet = file_get_contents(Yii::getPathOfAlias('webroot.themes.bootstrap.css') . '/print.css');
		$mPDF1->WriteHTML($stylesheet,1);
		$mPDF1->AddPage('P');
		$mPDF1->WriteHTML($this->renderPartial('imprimir', array('proyecto'=> $proyecto,'actividades' => $actividades),true),2);
		$mPDF1->Output();
	}
  

}
