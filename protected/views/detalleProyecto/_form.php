
	<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
		'id'=>'detalle-proyecto-form',
		'type'=>'horizontal',
		'enableAjaxValidation'=>false,
	)); ?>

	<div class="alert alert-info">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<h4>Instrucciones</h4>	
		Los campos con <span class="required">*</span> son requeridos.
	</div>	
	<?php echo $form->errorSummary($model); ?>
	<div class="form-group">
		<?php echo $form->labelEx($model,'nombre',array('class'=>'control-label col-lg-2')); ?>
		<div class="col-lg-3">
			<?php echo $form->textField($model,'nombre',array('size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
			<?php echo $form->error($model,'nombre'); ?>
		</div>
	</div>
	<div class="form-group">
		<?php echo $form->labelEx($model,'descripcion',array('class'=>'control-label col-lg-2')); ?>
		<div class="col-lg-3">
			<?php echo $form->textArea($model,'descripcion',array('class'=>'form-control','placeholder'=>"Escriba descripción amplia del proyecto",'rows'=>5)); ?>
			<?php echo $form->error($model,'descripcion'); ?>
		</div>
	</div>
<div class="form-group">
		<?php echo $form->labelEx($model,'fechaInicio_ft',array('class'=>'control-label col-lg-2')); ?>
		<div class="col-lg-3">
			<?php
										Yii::import('application.extensions.CJuiDateTimePicker.CJuiDateTimePicker');
										if ($model->fechaInicio_ft!='') 
											$model->fechaInicio_ft=date('Y-m-d',strtotime($model->fechaInicio_ft));
										$this->widget('CJuiDateTimePicker',array(
											'model'=>$model,
							                'attribute'=>'fechaInicio_ft',
							                'mode'=>'datetime',
							                'language' => 'es',
							                'options'=>array('dateFormat'=>'yy-mm-dd'),
							               
								            ));?>			<?php echo $form->error($model,'fechaInicio_ft'); ?>
		</div>
	</div>
	<div class="form-group">
		<?php echo $form->labelEx($model,'fechaFin_ft',array('class'=>'control-label col-lg-2')); ?>
		<div class="col-lg-3">
			<?php
										Yii::import('application.extensions.CJuiDateTimePicker.CJuiDateTimePicker');
										if ($model->fechaFin_ft!='') 
											$model->fechaFin_ft=date('Y-m-d',strtotime($model->fechaFin_ft));
										$this->widget('CJuiDateTimePicker',array(
											'model'=>$model,
							                'attribute'=>'fechaFin_ft',
							                'mode'=>'datetime',
							                'language' => 'es',
							                'options'=>array('dateFormat'=>'yy-mm-dd'),
							               
								            ));?>			<?php echo $form->error($model,'fechaFin_ft'); ?>
		</div>
	</div>
	<div class="form-group">
		<?php echo $form->labelEx($model,'costo',array('class'=>'control-label col-lg-2')); ?>
		<div class="col-lg-3">
		<div class="input-group">
		<span class="input-group-addon">$</span>
			<?php echo $form->textField($model,'costo',array('size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
			<?php echo $form->error($model,'costo'); ?>
		</div>
		</div>
	</div>
	<div class="form-group">
		<?php echo $form->labelEx($model,'peso',array('class'=>'control-label col-lg-2')); ?>
		<div class="col-lg-3">
			<?php echo $form->textField($model,'peso',array('size'=>10,'maxlength'=>20,'class'=>'form-control col-lg-2')); ?>
			<?php echo $form->error($model,'peso'); ?>
		</div>
	</div>
	<?php if(isset($_GET["ayuda"]) or $model->isNewRecord ==false){ ?>
		<div class="form-group">
			<?php echo $form->labelEx($model,'responsable_did',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-3">
				<?php echo $form->dropDownList($model,'responsable_did',CHtml::listData(Usuario::model()->findAll("estatus_did = 1"), "id", "nombre"),array("class"=>"form-control")); ?>			
				<?php echo $form->error($model,'responsable_did'); ?>
			</div>
		</div>
	<?php } ?>
	<div class="form-group">
		<?php echo $form->labelEx($model,'estatus_did',array('class'=>'control-label col-lg-2')); ?>
		<div class="col-lg-3">
			<?php echo $form->dropDownList($model,'estatus_did',CHtml::listData(Estatus::model()->findAll(), "id", "tipo"),array("class"=>"form-control")); ?>			
			<?php echo $form->error($model,'estatus_did'); ?>
		</div>
	</div>
	<div class="form-group">
		<div class="col-lg-offset-2 col-lg-10">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Crear' : 'Guardar',
		)); ?>
		</div>
	</div>

<?php $this->endWidget(); ?>
