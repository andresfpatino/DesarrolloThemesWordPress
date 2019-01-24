<?php 

// Inicializa la creación de las tablas nuevas
function Domnoo_database() {
	// WPDB nos da los metodos para trabajar con más tablas
	global $wpdb;

	// Agregamos una versión
	global $Dommo_dbversion;
	$Dommo_dbversion = '1.0';

	// Obtenemos el prefijo de la BD
	$tabla = $wpdb->prefix . 'reservaciones';

	// Obtenemos el collation de la instalación
	$charset_collate = $wpdb->get_charset_collate();

	// Agregamos la estructura de la BD
	$sql = "CREATE TABLE $tabla (
			id mediumint(9) NOT NULL AUTO_INCREMENT,
			nombre varchar(50) NOT NULL,
			fecha datetime NOT NULL,
			correo  varchar(50) DEFAULT '' NOT NULL,
			telefono varchar(10) NOT NULL,
			mensaje longtext NOT NULL,
			PRIMARY KEY (id)
	) $charset_collate; ";

	// Se necesita dbDelta para ejecutar el SQL y está en la sig dirección
	require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
	dbDelta($sql);

	// Agregamos la versión de la BD para compararla con futuras actualizaciones
	add_option('Dommo_dbversion' , $Dommo_dbversion);


	// Actualizar en caso de ser necesario
	$version_actual = get_option('Dommo_dbversion');

	// Comparamos las 2 versiones
	if ($Dommo_dbversion  != $version_actual) {
		$tabla = $wpdb->prefix . 'reservaciones';

		// Aqui se realizan las actualizaciónes
		$sql = "CREATE TABLE $tabla (
				id mediumint(9) NOT NULL AUTO_INCREMENT,
				nombre varchar(50) NOT NULL,
				fecha datetime NOT NULL,
				correo  varchar(50) DEFAULT '' NOT NULL,
				telefono varchar(10) NOT NULL,
				mensaje longtext NOT NULL, 
				# Agregar o eliminar tablas según sea necesario
				PRIMARY KEY (id)
		) $charset_collate; ";

		require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
		dbDelta($sql);

		// actualizamos a la versión actual
		update_option('Dommo_dbversion' , $Dommo_dbversion );
	}
}
add_action('after_setup_theme' , 'Domnoo_database');


# Función para comprobar que la versión instalada es = a la bd nueva
function Dommo_revisarDb(){
	global $Dommo_dbversion;
	if (get_site_option('Dommo_dbversion') != $Dommo_dbversion) {
	 	Domnoo_database();
	 } 
}
add_action('plugins_loaded' , 'Dommo_revisarDb');