<?php
$this->pageCaption='Actualizar Actividad '.$model->id;
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='';
$this->breadcrumbs=array(
	'Actividad'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Actualizar',
);

$this->menu=array(
	array('label'=>'Volver','url'=>array('proyecto/view','id'=>$model->proyecto_did)),
);
?>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>