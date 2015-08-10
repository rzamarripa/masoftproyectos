<?php
$this->pageCaption='Adminsitrar ';
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='Actividad';
$this->breadcrumbs=array(
	'Actividad'=>array('index'),
	'Adminsitrar',
);

$this->menu=array(
	array('label'=>'Listar Actividad','url'=>array('index')),
	array('label'=>'Crear Actividad','url'=>array('create')),
);

$this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'detalle-proyecto-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'nombre',
		array('name'=>'proyecto_did',
		        'value'=>'$data->proyecto->nombre',
			    'filter'=>CHtml::listData(Proyecto::model()->findAll(), 'id', 'nombre'),),
		'peso',
		array('name'=>'estatus_did',
		        'value'=>'$data->estatus->nombre',
			    'filter'=>CHtml::listData(Estatus::model()->findAll(), 'id', 'nombre'),),
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
