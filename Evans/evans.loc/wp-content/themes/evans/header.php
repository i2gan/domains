<!DOCTYPE html>
<html lang="en">
  <head>
    <title><?php bloginfo('name'); ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Barlow+Condensed:900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    
  <?php wp_head(); ?>
  </head>
  <body>
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/">Evans</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	      	<?php wp_nav_menu( array(
	      		'theme_location'  => 'header_menu',
	      		'container'       => '',
	      		'menu_class'      => 'navbar-nav ml-auto'
	      	) ); ?>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

<?php $slider = new WP_Query(array(
	'post_type' => 'slider_post',
	'order' => 'ASC'
)); ?>
    
    <section id="home-section" class="hero">
    	<h1 class="vr text-center">Evans</h1>
		  <div class="js-fullheight home-wrap d-flex">
		  	<div class="half order-md-last"></div>
		  	<div class="half">
			  	<div class="home-slider owl-carousel">

<?php if ( $slider->have_posts() ) : while ( $slider->have_posts() ) : $slider->the_post(); ?>
	<div class="slider-item js-fullheight">
      	<div class="overlay"></div>
        <div class="container-fluid p-0">
          <div class="row d-md-flex no-gutters slider-text js-fullheight align-items-center justify-content-end" data-scrollax-parent="true">
          	<div class="one-third img js-fullheight" style="background-image:url(<?php echo get_the_post_thumbnail_url(); ?>);">
          	</div>
        	</div>
        </div>
      </div>

<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

			    </div>
			  </div>
	    </div>
    </section>

