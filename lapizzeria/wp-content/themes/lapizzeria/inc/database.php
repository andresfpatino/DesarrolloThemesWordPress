<?php 

function Domnoo_database() {
	global $wpdb;
	global $Dommo_dbversion;
	$Dommo_dbversion = '0.1';

	$tabla = $wpdb->prefix . 'reservaciones';

	$charset_collate = $wpdb->get_charset_collate();

	$sql = "CREATE TABLE $tabla (
			id mediumint(9) NOT NULL AUTO_INCREMENT,
			nombre varchar(50) NOT NULL,
			fecha datetime NOT NULL,
			correo  varchar(50) DEFAULT '' NOT NULL,
			telefono varchar(10) NOT NULL,
			mensaje longtext NOT NULL,
			PRIMARY KEY (id)
	) $charset_collate; ";

	require_once(ABSPATH . 'wp-admin/includes/upgrade.php');

	dbDelta($sql);

	add_option('Dommo_dbversion' , $Dommo_dbversion);
}

add_action('after_setup_theme' , 'Domnoo_database');