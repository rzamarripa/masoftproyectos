<?php
$this->pageCaption='Tipo Fondo';
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='Listar tipo fondo';
$this->breadcrumbs=array(
	'Tipo Fondo',
);

$this->menu=array(
	array('label'=>'Crear TipoFondo','url'=>array('create')),
	array('label'=>'Administrar TipoFondo','url'=>array('admin')),
);
?>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'headersview' =>'_headersview',
	'footersview' => '_footersview',
	'itemView'=>'_view',
)); ?>
