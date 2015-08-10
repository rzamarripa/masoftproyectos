<?php
$this->pageCaption='Actualizar TipoFondo '.$model->id;
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='';
$this->breadcrumbs=array(
	'Tipo Fondo'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Actualizar',
);

$this->menu=array(
	array('label'=>'Listar TipoFondo','url'=>array('index')),
	array('label'=>'Crear TipoFondo','url'=>array('create')),
	array('label'=>'Ver TipoFondo','url'=>array('view','id'=>$model->id)),
	array('label'=>'Administrar TipoFondo','url'=>array('admin')),
);
?>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>