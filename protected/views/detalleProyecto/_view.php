	<tr>
		<td>
			<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
		</td>
		<td>
			<?php echo CHtml::encode($data->nombre); ?>
		</td>
		<td>
			<?php echo CHtml::encode($data->proyecto->nombre); ?>
		</td>
		<td>
			<?php echo CHtml::encode($data->proyecto->descripcion); ?>
		</td>
		<td>
			<?php echo CHtml::encode($data->proyecto->costo); ?>
		</td>
		<td>
			<?php echo CHtml::encode($data->peso); ?>
		</td>
		<td>
			<?php echo CHtml::encode($data->estatus->nombre); ?>
		</td>
	</tr>