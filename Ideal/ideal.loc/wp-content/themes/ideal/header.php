<!doctype html>
<html lang="en">

  <head>
    <title><?php bloginfo('name'); ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=DM+Sans:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/fonts/icomoon/style.css">

    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/animate.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/scss/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/style.css">

  <?php wp_head(); ?>

  </head>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    
    <div class="site-wrap" id="home-section">

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>



      <header class="site-navbar site-navbar-target" role="banner">

        <div class="container">
          <div class="row align-items-center position-relative">

            <div class="col-lg-4">
              <nav class="site-navigation text-right ml-auto " role="navigation">
<?php
  wp_nav_menu( array(
    'theme_location'  => 'menu_header_left',
    'container' => '',
    'menu_class' => 'site-menu main-menu js-clone-nav ml-auto d-none d-lg-block'
  ) );
?>
            
              </nav>
            </div>

            <div class="col-lg-4 text-center">
              <div class="site-logo">
                <a href="index.html">Ideal</a>
              </div>
              <div class="ml-auto toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-white"><span class="icon-menu h3 text-white"></span></a></div>
            </div>

            <div class="col-lg-4">
              <nav class="site-navigation text-left mr-auto " role="navigation">
<?php
  wp_nav_menu( array(
    'theme_location'  => 'menu_header_right',
    'menu_class'      => 'site-menu main-menu js-clone-nav ml-auto d-none d-lg-block',
    'container'       => 'div'
  ) );
?>
                
              </nav>
            </div>
          </div>
        </div>

      </header>

<?php $slider = new WP_Query( array('post_type' => 'slider', 'order' => 'ASC') ); ?>
<?php if ( $slider->have_posts() ) : ?>
  <div class="owl-carousel owl-1">
  <?php while ( $slider->have_posts() ) : $slider->the_post(); ?>
    <?php the_content(); ?>
<?php endwhile; ?>
  </div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>