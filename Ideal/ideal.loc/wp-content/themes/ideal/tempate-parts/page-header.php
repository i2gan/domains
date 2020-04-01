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

      <div class="ftco-blocks-cover-1">
        <div class="ftco-cover-1" style="background-image: url('<?php bloginfo('template_url'); ?>/images/hero_1.jpg');">
            <div class="container">
              <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 text-center">

<?php
  $page_header = [
    5 => 'Our Projects',
    7 => 'Our Services',
    9 => 'About <span class="text-primary">Ideal.</span>',
    11 => 'Our Blog',
    13 => 'Contact <span class="text-primary">Ideal.</span> Now!'
  ];
?>

                  <h1><?php echo $page_header[get_the_ID()]; ?></h1>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                </div>
              </div>
            </div>
        </div>
      </div>