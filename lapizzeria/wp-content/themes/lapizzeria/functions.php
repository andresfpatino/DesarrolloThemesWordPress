<?php

# REGISTRO DE ESTILOS
function lapizzeria_styles(){
	# Registra las hojas de estilos
	wp_register_style('normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.0');
	wp_register_style('fontawesome', get_template_directory_uri() . '/css/font-awesome.min.css', array('normalize'), '4.7.0');
	wp_register_style('style', get_template_directory_uri() . '/style.css', array('normalize'), '1.0');
	# Llamar las hojas de estilos
	wp_enqueue_style('normalize');
	wp_enqueue_style('fontawesome');
	wp_enqueue_style('style');

	# Registrar JS
	wp_register_script('scripts', get_template_directory_uri().'/js/scripts.js', array(), '1.0.0', true);
	# Llamar las JS
	wp_enqueue_script('jquery');
	wp_enqueue_script('scripts');
}

add_action('wp_enqueue_scripts' , 'lapizzeria_styles');


# REGISTRO DE MENUS
function lapizzeria_menus(){
	register_nav_menus(array(
	'header-menu' => __('Header menu', 'lapizzeria'),
	'social-menu' => __('Social menu', 'lapizzeria'),
	));
}
add_action('init', 'lapizzeria_menus');
