<?php

# Soporte etiqueta title
add_theme_support( 'title-tag' );

# REGISTRO DE ESTILOS
function Domnoo_styles(){

	// 	Registra las hojas de estilos
	wp_register_style('normalize', get_template_directory_uri() . '/css/normalize.css', array(), '8.0.0');
	wp_register_style('google_fonts', 'https://fonts.googleapis.com/css?family=Arizonia|Raleway:100,300,400,700,900', array(), '1.0.0');
	wp_register_style('fontawesome', get_template_directory_uri() . '/css/font-awesome.min.css', array('normalize'), '4.7.0');
	wp_register_style('style', get_template_directory_uri() . '/style.css', array('normalize'), '1.0');

	// 	Llamar las hojas de estilos
	wp_enqueue_style('normalize');
	wp_enqueue_style('google_fonts');
	wp_enqueue_style('fontawesome');
	wp_enqueue_style('style');

	// 	Registrar JS
	wp_register_script('scripts', get_template_directory_uri().'/js/scripts.js', array(), '1.0.0', true);
	// 	Llamar las JS
	wp_enqueue_script('jquery');
	wp_enqueue_script('scripts');
}
add_action('wp_enqueue_scripts' , 'Domnoo_styles');

# REGISTRO DE MENUS
function Domnoo_menus(){
	register_nav_menus(array(
	'header-menu' => __('Header menu', 'Domnoo'),
	'social-menu' => __('Social menu', 'Domnoo'),
	));
}
add_action('init', 'Domnoo_menus');

# Soporte para imagenes destacadas
function Domnoo_setup(){
	add_theme_support('post-thumbnails');
}
add_action('after_setup_theme', 'Domnoo_setup');
