<?php get_header(); ?>

  <?php
    $pagina_blog = get_option('page_for_posts');
    $imagen = get_post_thumbnail_id($pagina_blog);
    $imagen = wp_get_attachment_image_src( $imagen, 'full');
  ?>

  <div class="hero" style="background-image:url(<?php echo $imagen[0]; ?>);">
    <div class="contenido-hero">
      <div class="text-hero">
        <h1><?php echo get_the_title($pagina_blog); ?></h1>
        <div class="breadcrumb">
          <?php if(function_exists('bcn_display') && !is_page(2)){ bcn_display();} ?>
        </div>
      </div>
    </div>
  </div>

  <div class="principal contenedor">
    <div class="contenedor-grid">
      <main class="columnas2-3 contenido-paginas">
        <!-- Loop ariticulos blog -->
        <?php while(have_posts()): the_post(); ?>
          <article class="entrada-blog">
            <a href="<?php the_permalink(); ?>">
              <div class="imagen-entrada">
                  <div class="fecha">
                    <time><?php the_time('d'); ?> </time>
                    <span><?php the_time('M'); ?></span>
                  </div>
                  <?php the_post_thumbnail('especialidades')?>
              </div>
            </a>
            <header class="informacion-entrada clear">
              <div class="titulo-entrada">
                <?php the_title('<h2>' , '</h2>');  ?>
                <span class="autor"> <i class="fa fa-user" aria-hidden="true"></i> <?php the_author();?> </span>
                <span class="category"><i class="fa fa-tag" aria-hidden="true"></i> <?php the_category('<span>' , '</span>');?></span>
              </div>

            </header>
            <div class="contenido-entrada">
              <?php the_excerpt(); ?>
              <a class="button rojo" href="<?php the_permalink(); ?>">Leer más</a>
            </div>
          </article>
        <?php endwhile; ?>
      </main>

      <?php get_sidebar(); ?>

    </div>
  </div>

<?php get_footer(); ?>
