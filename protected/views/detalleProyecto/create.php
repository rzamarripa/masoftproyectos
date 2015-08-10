<?php
	
	$proyecto = Proyecto::model()->find("id = " . $_GET["id"]);
$this->pageCaption=$proyecto->nombre;
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription= "";
$this->breadcrumbs=array(
	'Actividad'=>array('index'),
	'Crear',
);
$this->menu=array(
	array('label'=>'Todos los proyectos','url'=>array('proyecto/index')),
	array('label'=>'Ver ' . $proyecto->nombre,'url'=>array('proyecto/view',"id"=>$_GET["id"])),
);
?>


<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>