
    <footer>
      <?php
        $args = array(
          'theme_location' => 'header-menu',
          'container' =>  'nav'
        );
        wp_nav_menu($args);
      ?>
      <div class="ubicacion">
        <p>8179 Bay avenue Mountain view, CA 9103</p>
        <p>Phone: +57 123 456 789</p>
        <p class="copy">Todos los derechos reservados &copy; <a href="https://andresfpatino.github.io" target="_blank">Andrés F. Patiño</a> <?php echo date('Y')?> </p>
      </div>
    </footer>

    <?php  wp_footer();?>
  </body>
</html>
