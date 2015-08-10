<?php
$this->pageCaption='Evento';
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='Listar evento';
$this->breadcrumbs=array(
	'Evento',
);

$this->menu=array(
	array('label'=>'Listar Eventos','url'=>array('listar')),
);
?>

<div id='calendar' style="height:200px;"></div>