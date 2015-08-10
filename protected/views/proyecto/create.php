<?php
$this->pageCaption='Crear Proyecto';
$this->pageTitle=Yii::app()->name . ' - ' . $this->pageCaption;
$this->pageDescription='Crear nuevo proyecto';
$this->breadcrumbs=array(
	'Proyecto'=>array('index'),
	'Crear',
);
$this->menu=array(
	array('label'=>'Listar Proyecto','url'=>array('index')),
	array('label'=>'Administrar Proyecto','url'=>array('admin')),
);
?>
<div class="alert alert-info">
	<button type="button" class="close" data-dismiss="alert">&times;</button>
	<h4>Instrucciones</h4>	
	Los campos con <span class="required">*</span> son requeridos.
</div>

		<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
