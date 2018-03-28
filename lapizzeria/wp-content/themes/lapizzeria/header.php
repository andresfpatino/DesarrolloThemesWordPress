<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,700,900" rel="stylesheet">
    <?php wp_head();
?>
</head>
<body>

<header class="encabezado-sitio">
    <div class="contenedor">
        <div class="logo">
            <a href=" <?php echo esc_url(home_url('/')); ?> ">
                <img class="logotipo" src=" <?php  echo get_template_directory_uri();?>/img/logo.png " alt="LaPizeria">            </a>
        </div>
        <div class="informacion-encabezado">
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
            <div class="direccion">
              <p>Sede principal: Cra 66 # 3B Esquina</p>
              <p>Teléfono: 396 0141 – 323 4292</p>
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
