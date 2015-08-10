<?php
$this->pageCaption='Adminsitrar ';
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='tipo fondo';
$this->breadcrumbs=array(
	'Tipo Fondo'=>array('index'),
	'Adminsitrar',
);

$this->menu=array(
	array('label'=>'Listar TipoFondo','url'=>array('index')),
	array('label'=>'Crear TipoFondo','url'=>array('create')),
);

$this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'tipo-fondo-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'nombre',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
