<?php

require get_template_directory().'/inc/database.php';

# --- Soporte etiqueta title
add_theme_support( 'title-tag' );

# --- REGISTRO DE ESTILOS
function Domnoo_styles(){
    // 	Registra las hojas de estilos
    wp_register_style('normalize', get_template_directory_uri().'/css/normalize.css', array(), '8.0.0');
    wp_register_style('google_fonts', 'https://fonts.googleapis.com/css?family=Arizonia|Raleway:100,300,400,700,900', array(), '1.0.0');
    wp_register_style('fontawesome', get_template_directory_uri().'/css/font-awesome.min.css', array('normalize'), '4.7.0');
    wp_register_style('style', get_template_directory_uri().'/style.css', array('normalize'), '1.0');
    wp_register_style('lightbox-style', get_template_directory_uri().'/libs/fancybox-2.1.7/jquery.fancybox.css', '2.1.5' );
    wp_register_style('fancybox-thumb', get_template_directory_uri().'/libs/fancybox-2.1.7/jquery.fancybox-thumbs.css');
    wp_register_style('fluidbox', get_template_directory_uri().'/css/fluidbox.min.css');

    // 	Llamar las hojas de estilos
    wp_enqueue_style('normalize');
    wp_enqueue_style('google_fonts');
    wp_enqueue_style('fontawesome');
    wp_enqueue_style('style');
    wp_enqueue_style('lightbox-style');
    wp_enqueue_style('fancybox-thumb');
    wp_enqueue_style('fluidbox');

    // 	Registrar JS
    wp_register_script('scripts', get_template_directory_uri().'/js/scripts.js', array(), '1.0.0', true);
    wp_register_script('fancybox', get_template_directory_uri().'/libs/fancybox-2.1.7/jquery.fancybox.pack.js', array( 'jquery' ), '2.1.7' ,false, true );
    wp_register_script('lightbox', get_template_directory_uri().'/libs/fancybox-2.1.7/jquery.fancybox.js', array( 'fancybox' ), '2.1.7' ,false, true );
    wp_register_script('fancybox-thumb', get_template_directory_uri().'/libs/fancybox-2.1.7/jquery.fancybox-thumbs.js', array(), '1.0.7' ,false, true );
    wp_register_script('fluidbox', get_template_directory_uri().'/js/jquery.fluidbox.min.js', array(), '' ,false, true );


    // 	Llamar las JS
    wp_enqueue_script('jquery');
    wp_enqueue_script('scripts');
    wp_enqueue_script('fancybox');
    wp_enqueue_script('lightbox');
    wp_enqueue_script('fancybox-thumb');
    wp_enqueue_script('fluidbox');
}
add_action('wp_enqueue_scripts' , 'Domnoo_styles');


# --- REGISTRO DE MENUS
function Domnoo_menus(){
    register_nav_menus(array(
    'header-menu' => __('Header menu', 'Domnoo'),
    'social-menu' => __('Social menu', 'Domnoo'),
    ));
}
add_action('init', 'Domnoo_menus');

# --- Soporte para tamaños de imagenes
function Domnoo_setup(){
    add_theme_support('post-thumbnails');
    // Se crea un tamaño de imagen personalizado para nosotros
    add_image_size('nosotros', 437, 291, true);
    // Se crea un tamaño de imagen personalizado para las especialidades
    add_image_size('especialidades', 768, 515, true);

    // update_option('thumbnail_size_w', 253);
    // update_option('thumbnail_size_h', 253);
}

add_action('after_setup_theme', 'Domnoo_setup');


# --- CUSTOM POST TYPE ESPECIALIDADES
add_action( 'init', 'Domnoo_especialidades' );
function Domnoo_especialidades() {
    $labels = array(
        'name'               => _x( 'Especialidades', 'Domnoo' ),
        'singular_name'      => _x( 'Especialidades', 'post type singular name', 'Domnoo' ),
        'menu_name'          => _x( 'Especialidades', 'admin menu', 'Domnoo' ),
        'name_admin_bar'     => _x( 'Especialidades', 'add new on admin bar', 'Domnoo' ),
        'add_new'            => _x( 'Añadir nuevo', 'book', 'Domnoo' ),
        'add_new_item'       => __( 'Añadir nueva especialidad', 'Domnoo' ),
        'new_item'           => __( 'Nueva especialidad', 'Domnoo' ),
        'edit_item'          => __( 'Editar', 'Domnoo' ),
        'view_item'          => __( 'Ver', 'Domnoo' ),
        'all_items'          => __( 'Ver todo', 'Domnoo' ),
        'search_items'       => __( 'Buscar especialidades', 'Domnoo' ),
        'parent_item_colon'  => __( 'Parent Pizzas:', 'Domnoo' ),
        'not_found'          => __( 'No se encontraron especialidades', 'Domnoo' ),
        'not_found_in_trash' => __( 'No hay nada en papelera.', 'Domnoo' )
    );

    $args = array(
        'labels'             => $labels,
        'description'        => __( 'Descripción.', 'Domnoo' ),
        'public'             => true,
        'publicly_queryable' => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'rewrite'            => array( 'slug' => 'especialidades' ),
        'capability_type'    => 'post',
        'has_archive'        => true,
        'hierarchical'       => false,
        'menu_position'      => 6,
        'supports'           => array( 'title', 'editor', 'thumbnail' ),
        'taxonomies'         => array( 'category' ),
        'menu_icon'   => 'dashicons-awards',
    );

    register_post_type( 'especialidades', $args );
}


# --- SOPORTE PARA WIDGETS
function lapizzeria_widgets(){
    register_sidebar(array(
        'name' 			=> 'Blog sidebar',
        'id'			=> 'blog_sidebar',
        'before_widget' => '<div class="widget">',
        'after_widget'	=> '</div>',
        'before_title' 	=> '<h4>',
        'after_title' 	=> '</h4>'
    ));    
}

add_action('widgets_init' , 'lapizzeria_widgets');