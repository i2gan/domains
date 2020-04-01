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

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <div class="ftco-blocks-cover-1">
      <div class="ftco-cover-1 overlay" style="background-image: url('<?php bloginfo('template_url'); ?>/images/hero_2.jpg')">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 text-center">
    
              <span class="d-block mb-3 text-white" data-aos="fade-up"><?php the_time('d m Y'); ?> <span class="mx-2 text-primary">&bullet;</span> by <?php the_author(); ?></span>
                <h1 class="mb-4" data-aos="fade-up" data-aos-delay="100"><?php the_title(); ?></h1>
              </div>
            </div>
          </div>
        </div>
      </div>
            


      


    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 blog-content">
            
            <?php the_content(); ?>

            <div class="pt-5">
              <p>Categories:  <a href="#">Design</a>, <a href="#">Events</a>  Tags: <a href="#">#html</a>, <a href="#">#trends</a></p>
            </div>
          </div>

          <div class="col-md-4 sidebar">
            <div class="sidebar-box">
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon fa fa-search"></span>
                  <input name="s" type="text" class="form-control" placeholder="Type a keyword and hit enter">
                </div>
              </form>
            </div>
            <div class="sidebar-box">
              <div class="categories">
                <h3>Categories</h3>
                <li><a href="#">Creatives <span>(12)</span></a></li>
                <li><a href="#">News <span>(22)</span></a></li>
                <li><a href="#">Design <span>(37)</span></a></li>
                <li><a href="#">HTML <span>(42)</span></a></li>
                <li><a href="#">Web Development <span>(14)</span></a></li>
              </div>
            </div>
            <div class="sidebar-box">
              <img src="<?php bloginfo('template_url'); ?>/images/person_1.jpg" alt="Free Website Template by Free-Template.co" class="img-fluid mb-4 w-50 rounded-circle">
              <h3 class="text-black">About The Author</h3>
              <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
              <p><a href="#" class="btn btn-primary btn-md text-white">Read More</a></p>
            </div>

            <div class="sidebar-box">
              <h3 class="text-black">Paragraph</h3>
              <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <?php endwhile; ?>
            
    <?php else: ?>
    <!-- no posts found -->
    <?php endif; ?>

             
              

<?php get_footer(); ?>