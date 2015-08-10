<?php
$this->pageCaption='Ver TipoFondo #'.$model->id;
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='';
$this->breadcrumbs=array(
	'Tipo Fondo'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'Listar TipoFondo','url'=>array('index')),
	array('label'=>'Crear TipoFondo','url'=>array('create')),
	array('label'=>'Actualizar TipoFondo','url'=>array('update','id'=>$model->id)),
	array('label'=>'Eliminar TipoFondo','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Estás seguro que quieres eliminar este elemento?')),
	array('label'=>'Administrar TipoFondo','url'=>array('admin')),
);
?>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'baseScriptUrl'=>false,
	'cssFile'=>false,
	'htmlOptions'=>array('class'=>'table table-bordered table-striped'),
	'attributes'=>array(
		'id',
		'nombre',
	),
)); ?>
