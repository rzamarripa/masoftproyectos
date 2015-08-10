<div class="row">
	<div class="col-lg-6">
		<h3>Información del Proyecto</h3>
		<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
			'id'=>'proyecto-form',
			'type'=>'horizontal',
			'enableAjaxValidation'=>false,
		)); ?>
		
		<?php echo $form->errorSummary($model); ?>
		<div class="form-group">
			<?php echo $form->labelEx($model,'categoria_did',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-9">
				<?php echo $form->dropDownList($model,'categoria_did',CHtml::listData(Categoria::model()->findAll(), "id", "nombre"),array("class"=>"form-control")); ?>			
				<?php echo $form->error($model,'categoria_did'); ?>
			</div>
		</div>
			<div class="form-group">
			<?php echo $form->labelEx($model,'nombre',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-9">
				<?php echo $form->textField($model,'nombre',array('size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
				<?php echo $form->error($model,'nombre'); ?>
			</div>
		</div>
		<div class="form-group">
			<?php echo $form->labelEx($model,'descripcion',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-9">
				<?php echo $form->textArea($model,'descripcion',array('rows'=>6, 'cols'=>50, 'id' => 'summernote')); ?>
				<?php echo $form->error($model,'descripcion'); ?>
			</div>
		</div>
		<div class="form-group">
			<?php echo $form->labelEx($model,'costo',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-9">
				<?php echo $form->textField($model,'costo',array('size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
				<?php echo $form->error($model,'costo'); ?>
			</div>
		</div>
	
		<div class="form-group">
			<?php echo $form->labelEx($model,'fechaInicio_ft',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-9">
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
			<div class="col-lg-9">
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
			<?php echo $form->labelEx($model,'tipoFondo_did',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-9">
				<?php echo $form->dropDownList($model,'tipoFondo_did',CHtml::listData(TipoFondo::model()->findAll(), "id", "nombre"),array("class"=>"form-control")); ?>
				<?php echo $form->error($model,'tipoFondo_did'); ?>
			</div>
		</div>
		<div class="form-group">
			<?php echo $form->labelEx($model,'responsable_did',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-9">
				<?php echo $form->dropDownList($model,'responsable_did',CHtml::listData(Usuario::model()->findAll(), "id", "nombre"),array("class"=>"form-control")); ?>			
				<?php echo $form->error($model,'responsable_did'); ?>
			</div>
		</div>
	
		<div class="form-group">
			<?php echo $form->labelEx($model,'estatus_did',array('class'=>'control-label col-lg-2')); ?>
			<div class="col-lg-9">
				<?php echo $form->dropDownList($model,'estatus_did',CHtml::listData(Estatus::model()->findAll(), "id", "nombre"),array("class"=>"form-control")); ?>			
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
	</div>
	<div class="col-lg-6">
		<h3>Seleccione a los involucrados</h3>
		<?php
			$involucrados=CHtml::listData(Usuario::model()->findAll("tipoUsuario_did != 2"),'id','nombre');
			echo CHtml::checkBoxList('Involucrados',$selected_Array=array(),$involucrados);
		
		?>
	</div>
</div>
	
	

<?php $this->endWidget(); ?>
