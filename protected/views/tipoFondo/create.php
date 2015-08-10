<?php
$this->pageCaption='Crear TipoFondo';
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='Crear nuevo tipofondo';
$this->breadcrumbs=array(
	'Tipo Fondo'=>array('index'),
	'Crear',
);
$this->menu=array(
	array('label'=>'Listar TipoFondo','url'=>array('index')),
	array('label'=>'Administrar TipoFondo','url'=>array('admin')),
);
?>


<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>