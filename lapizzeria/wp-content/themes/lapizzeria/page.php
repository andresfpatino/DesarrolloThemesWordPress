<?php get_header(); ?>  

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
    
<?php get_footer(); ?>