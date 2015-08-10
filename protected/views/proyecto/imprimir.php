<?php $costoActTerm = 0; $costoActPen = 0; ?>
<div class="row">
	<div class="span12">
		<table style="text-align:center;">
			<tr>
				<td class="span8">
					<address class="muted">
					  <h1 style="text-align:center;"><?php echo $proyecto->nombre ?></h3>
					</address>
				</td>
			</tr>
		</table>
	</div>
</div>
<br>
<h3 style="text-align:pull-left;">Actividades Realizadas</h3>

<div class="row">
	<div class="span12">
		<table style="font-size: 12pt;" class="table table-condensed table-bordered">
			<tr>
				<th style="text-align: center">Actividad</th>
				<th style="text-align: center">Descripción</th>
				<th style="text-align: center">Fecha de inicio</th>
				<th style="text-align: center">Fecha de Finalización</th>
				<th style="text-align: center">Presupuesto</th>
			</tr>
			<tbody>
				<?php
					foreach($actividades as $actividad){if($actividad->estatus_did == 2){$costoActTerm = $costoActTerm + $actividad->costo;
				?>
				<tr>
					<td style="padding:1px; text-align: left;width:20%;"><?php echo $actividad->nombre;?></td>
					<td style="padding:1px;width:44%;"><?php echo $actividad->descripcion?></td>
					<td style="padding:1px; text-align: center;width:12%;"><?php $fecha = date('d-m-Y', strtotime($actividad->fechaInicio_ft)); echo $fecha;?></td>
					<td style="padding:1px; text-align: center;width:12%;"><?php $fecha = date('d-m-Y', strtotime($actividad->fechaFinalizado)); echo $fecha ?></td>
					<td style="padding:1px; text-align: right;width:12%;"><?php echo "$" . number_format($actividad->costo);?></td>
				</tr>
				<?php }} ?>
			</tbody>
		</table>
	</div>
</div>
<h3 style="text-align:pull-left;">Actividades Pendientes</h3>

<div class="row">
	<div class="span12">
		<table style="font-size: 12pt;" class="table table-condensed table-bordered">
			<tr>
				<th style="text-align: center">Actividad</th>
				<th style="text-align: center">Descripción</th>
				<th style="text-align: center">Fecha de inicio</th>
				<th style="text-align: center">Fecha a Finalizar</th>
				<th style="text-align: center">Presupuesto</th>
			</tr>
			<tbody>
				<?php
					foreach($actividades as $actividad){if($actividad->estatus_did == 1){$costoActPen = $costoActPen + $actividad->costo;
				?>
				<tr>
					<td style="padding:1px; text-align: left;width:20%;"><?php echo $actividad->nombre;?></td>
					<td style="padding:1px;width:44%;"><?php echo $actividad->descripcion?></td>
					<td style="padding:1px; text-align: center;width:12%;"><?php $fecha = date('d-m-Y', strtotime($actividad->fechaInicio_ft)); echo $fecha;?></td>
					<td style="padding:1px; text-align: center;width:12%;"><?php $fecha = date('d-m-Y', strtotime($actividad->fechaFin_ft)); echo $fecha ?></td>
					<td style="padding:1px; text-align: right;width:12%;"><?php echo "$" . number_format($actividad->costo);?></td>
				</tr>
				<?php }} ?>
			</tbody>
		</table>
	</div>
</div>

<div class="row">
	<div class="span12">
		<table style="font-size: 14pt;" class="table table-condensed table-bordered">
			<tr>
				<th style="text-align: center">Presupuesto de Act. Terminadas</th>
				<th style="text-align: center">Presupuesto de Act. Pendientes</th>
				<th style="text-align: center">Presupuesto del Proyecto</th>
			</tr>
			<tbody>
				<?php
					foreach($actividades as $actividad){if($actividad->estatus_did == 2){
				?>
				<tr>
					<td style="padding:1px; text-align: center;width:33%;"><?php echo "$" . number_format($costoActTerm);?></td>
					<td style="padding:1px; text-align: center;width:33%;"><?php echo "$" . number_format ($costoActPen);?></td>
					<td style="padding:1px; text-align: center;width:33%;"><?php echo "$" . number_format($proyecto->costo);?></td>
				</tr>
				<?php }} ?>
			</tbody>
		</table>
	</div>
</div>