
    <footer>
      <?php
        $args = array(
          'theme_location' => 'header-menu',
          'container' =>  'nav'
        );
        wp_nav_menu($args);
      ?>
      <div class="ubicacion">
        <p><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo esc_html(get_option('direccion')); ?> </p>
        <p><i class="fa fa-phone" aria-hidden="true"></i> <?php echo esc_html(get_option('telefono')); ?></p>
        <p class="copy">Todos los derechos reservados &copy; <a href="https://felipepatino.com" target="_blank">Andrés F. Patiño</a> <?php echo date('Y')?> </p>
      </div>
    </footer>

    <?php  wp_footer();?>
  </body>
</html>
