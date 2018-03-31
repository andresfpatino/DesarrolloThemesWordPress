<?php
/*
* Template Name: Especialidades
*/
get_header(); ?>
    <!-- Estructura trae el contenido de la página -->
    <?php while(have_posts()): the_post(); ?>
        <div class="hero" style="background-image:url(<?php echo get_the_post_thumbnail_url(); ?>);">
            <div class="contenido-hero">
                <div class="text-hero">
                    <h1><?php the_title(); ?> </h1>
                    <div class="breadcrumb">
                        <?php
                            if(function_exists('bcn_display') && !is_page(2)){
                                bcn_display();
                            }
                        ?>
                     </div>
                </div>
            </div>
        </div>
        <div class="principal contenedor">
            <main class="contenido-paginas">
                <?php the_content(); ?>
            </main>
        </div>
    <?php endwhile; ?>

    <!-- Consulta al custom PostType -->
    <div class="nuestras-especialidades contenedor">
      <h3 class="text-rojo"> Pizzas</h3>
      <div class="contenedor-grid">
        <?php
          # Query para traer el custom PostType de especialidades
          $args = array(
            'post_type' => 'especialidades',
            'post_per_page' => -1, // Trae todos
            'oderby'  => 'title',
            'order' => 'ASC',
            'category_name' => 'pizzas'
          );
          $especialidades = new WP_Query($args);
          while ($especialidades->have_posts()): $especialidades->the_post();
        ?>
        <div class="columnas1-3">
          <?php
            /* obtenemos la url de la imagen */
            $featured_img_url = get_the_post_thumbnail_url();
            /* linkeamos la imagen para el lightbox*/
            $title = get_the_title();
            echo '<a class="fancybox-thumb" href="'.$featured_img_url.'" title="Pizza - '.$title.'" rel="especialidades" >';
                the_post_thumbnail('especialidades');
            echo '</a>';
          ?>
          <div class="texto-especilidad">
            <h4><?php the_title();?><span><?php the_field('precio'); ?></span></h4>
            <?php the_content(); ?>
          </div>
        </div>
        <?php endwhile; wp_reset_postdata(); ?> <!-- wp_reset_postdata(); se usa para cerrar un wp_query -->
      </div> <!-- .contenedor-grid -->

      <h3 class="text-rojo"> Otros</h3>
      <div class="contenedor-grid">
        <?php
          # Query para traer el custom PostType de especialidades
          $args = array(
            'post_type' => 'especialidades',
            'post_per_page' => -1, // Trae todos
            'oderby'  => 'title',
            'order' => 'ASC',
            'category_name' => 'otros'
          );
          $otros = new WP_Query($args);
          while ($otros->have_posts()): $otros->the_post();
        ?>
        <div class="columnas1-3">
          <?php
            $featured_img_url = get_the_post_thumbnail_url();
            $title = get_the_title();
            echo '<a class="fancybox-thumb" href="'.$featured_img_url.'" title="Otros - '.$title.'" rel="otros" >';
                the_post_thumbnail('especialidades');
            echo '</a>';
          ?>
          <div class="texto-especilidad">
            <h4><?php the_title();?><span><?php the_field('precio'); ?></span></h4>
            <?php the_content(); ?>
          </div>
        </div>
        <?php endwhile; wp_reset_postdata(); ?> <!-- wp_reset_postdata(); se usa para cerrar un wp_query -->
      </div> <!-- .contenedor-grid -->
    </div><!-- .nuestras-especialidades -->

<?php get_footer(); ?>
