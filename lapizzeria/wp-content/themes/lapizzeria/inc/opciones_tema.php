<?php 

// Añadir item de opciones al menu
function domnoo_opciones(){
	add_menu_page(
		'Opciones de tema', 
		'Opciones de tema',
		'administrator', 
		'opciones_tema', 
		'lapizzeria_opciones', //callback 
		'dashicons-admin-settings',
		2
	);

	add_submenu_page(
		'opciones_tema',
		'Reservaciones',
		'Reservaciones',
		'administrator',
		'reservaciones', //callback 
		'reservaciones'
	);

	// Llamar el registro de las opciones dle theme
	add_action('admin_init', 'registrar_opciones');
}

add_action('admin_menu', 'domnoo_opciones');

function registrar_opciones(){
	// registrar opciones, una por campo
	register_setting('lapizzeria_opciones_grupo', 'direccion');
	register_setting('lapizzeria_opciones_grupo', 'telefono');
}

function lapizzeria_opciones(){
	?>
	<div class="wrap">	
		<h1>Opciones de tema</h1>	
		<form action="options.php" method="POST">
			<?php settings_fields('lapizzeria_opciones_grupo'); ?>
			<?php do_settings_sections('lapizzeria_opciones_grupo'); ?>
			<table class="form-table">
				<tr valign="top">
					<th scope="row">Dirección</th>
					<td><input type="text" name="direccion" value="<?php echo esc_attr(get_option('direccion')); ?>"></td>
				</tr>
				<tr valign="top">
					<th scope="row">Teléfono</th>
					<td><input type="text" name="telefono" value="<?php echo esc_attr(get_option('telefono')); ?>"></td>
				</tr>
			</table>
			<?php submit_button(); ?>
		</form>
	</div>
	<?php	
}


// Imprime la información de las reservas
function reservaciones(){	
	?>
	<div class="wrap">
		<h1>Reservaciones</h1>
		<table class="wp-list-table widefat striped">
			<thead>
				<tr>
					<th class="manage-column">ID</th>
					<th class="manage-column">Nombre</th>
					<th class="manage-column">Fecha de reserva</th>
					<th class="manage-column">Correo</th>
					<th class="manage-column">Teléfono</th>
					<th class="manage-column">Mensaje</th>
				</tr>
			</thead>
			<tbody>
				<?php
					global $wpdb;
					$reservaciones = $wpdb->prefix . 'reservaciones';
					$registros = $wpdb->get_results("SELECT * FROM $reservaciones", ARRAY_A);

					foreach ($registros as $registro) {
				?>

				<tr>
					<td> <?php echo $registro['id'] ?> </td>
					<td> <?php echo $registro['nombre'] ?> </td>
					<td> <?php echo $registro['fecha'] ?> </td>
					<td> <?php echo $registro['correo'] ?> </td>
					<td> <?php echo $registro['telefono'] ?> </td>
					<td> <?php echo $registro['mensaje'] ?> </td>
				<tr>

				<?php } ?>

			</tbody>
		</table>
	</div>
	<?php

}