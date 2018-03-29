<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <?php
        if ( ! function_exists( '_wp_render_title_tag' ) ) {
            function theme_slug_render_title() {
        ?>
        <title><?php wp_title( '|', true, 'right' ); ?></title>
        <?php
            }
            add_action( 'wp_head', 'theme_slug_render_title' );
        }
    ?>
    <?php wp_head(); ?>
</head>
<body>
<header class="encabezado-sitio">
    <div class="contenedor">      
            <div class="redes-sociales">
                <?php
                    $args = array(
                    'theme_location'    =>  'social-menu',
                    'container'         =>  'nav',
                    'container_class'   =>  'sociales',
                    'container_id'      =>  'sociales',
                    'link_before'       =>  '<span class="sr-text">',
                    'link_after'        =>  '</span>'
                    );
                    wp_nav_menu($args);
                ?>
            </div>        
        <div class="logo">
            <a href=" <?php echo esc_url(home_url('/'));?> ">
                <img class="logotipo" src=" <?php  echo get_template_directory_uri(); ?>/img/logo.png " alt="LaPizeria">
            </a>
        </div>
        <div class="informacion-encabezado">
            <div class="direccion">
              <p><i class="fa fa-phone" aria-hidden="true"></i> Orders: +57 123 456 789</p>
            </div>
        </div>
    </div>
</header>
<div class="menu-principal">
  <div class="mobile-menu">
    <a href="#" class="mobile"><i class="fa fa-bars" aria-hidden="true"></i> Menu</a>
  </div>
  <nav class="menu-sitio">
      <div class="contenedor navegacion">
            <?php
                $args = array(
                'theme_location' => 'header-menu',
                'container'     =>  'nav',
                'container_class'   => 'menu-sitio'
                );
                wp_nav_menu($args);
            ?>
      </div>
  </nav>
</div>
