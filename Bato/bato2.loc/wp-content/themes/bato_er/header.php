<!DOCTYPE HTML>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php bloginfo('name'); wp_title(); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Karla:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700" rel="stylesheet">
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/bootstrap.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/owl.theme.default.min.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/magnific-popup.css">

    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/style.css">


    <!-- Modernizr JS -->
    <script src="<?php bloginfo('template_url'); ?>/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->

<?php wp_head(); ?>
    </head>
    <body>

    <nav id="colorlib-main-nav" role="navigation">
        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle active"><i></i></a>
        <div class="js-fullheight colorlib-table">
            <div class="colorlib-table-cell js-fullheight">
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" id="search" placeholder="Enter any key to search...">
                            <button type="submit" class="btn btn-primary"><i class="icon-search3"></i></button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <?php
                            wp_nav_menu( array(
                                'theme_location'  => 'menu',
                                'container'       => ''
                            ) );
                        ?>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="head-title">Gallery</h2>
                        <a href="<?php bloginfo('template_url'); ?>/images/work-1.jpg" class="gallery image-popup-link text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/work-1.jpg);">
                            <span><i class="icon-search3"></i></span>
                        </a>
                        <a href="<?php bloginfo('template_url'); ?>/images/work-2.jpg" class="gallery image-popup-link text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/work-2.jpg);">
                            <span><i class="icon-search3"></i></span>
                        </a>
                        <a href="<?php bloginfo('template_url'); ?>/images/work-3.jpg" class="gallery image-popup-link text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/work-3.jpg);">
                            <span><i class="icon-search3"></i></span>
                        </a>
                        <a href="<?php bloginfo('template_url'); ?>/images/work-4.jpg" class="gallery image-popup-link text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/work-4.jpg);">
                            <span><i class="icon-search3"></i></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    
    <div id="colorlib-page">
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="colorlib-navbar-brand">
                            <a class="colorlib-logo" href="/">Bato</a>
                        </div>
                        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
                    </div>
                </div>
            </div>
        </header>