<?php /* Template Name: style_page */ ?>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Megazine Template</title>
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
	<link rel="shortcut icon" href="favicon.ico">

	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="<?php bloginfo('template_url') ?>/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<?php bloginfo('template_url') ?>/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<?php bloginfo('template_url') ?>/css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="<?php bloginfo('template_url') ?>/css/flexslider.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<?php bloginfo('template_url') ?>/css/magnific-popup.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="<?php bloginfo('template_url') ?>/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?php bloginfo('template_url') ?>/css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="<?php bloginfo('template_url') ?>/css/style.css">

	<!-- Modernizr JS -->
	<script src="<?php bloginfo('template_url') ?>/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<?php wp_head(); ?>
	</head>
	<body>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<h1 id="colorlib-logo"><a href="index.html">Megazine</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<?php
					wp_nav_menu( array (
						'theme_location' => 'menu',
						'container' => ''
					) );
				?>
			</nav>

			<div class="colorlib-footer">
				<p><small>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> </span> <span>Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash.com</a> &amp; <a href="https://www.pexels.com/" target="_blank">Pexels.com</a></span></small></p>
				<ul>
					<li><a href="#"><i class="icon-facebook2"></i></a></li>
					<li><a href="#"><i class="icon-twitter2"></i></a></li>
					<li><a href="#"><i class="icon-instagram"></i></a></li>
					<li><a href="#"><i class="icon-linkedin2"></i></a></li>
				</ul>
			</div>

		</aside>



<div id="colorlib-main">

<!-- Slider -->
<?php $style_slides = new WP_Query ( array (
	'posts_per_page' => 3,
	'cat' => 2,
	'order' => 'ASC'

) ) ?>
<?php if ( $style_slides->have_posts() ) : ?>
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
					<ul class="slides">
	<?php while ( $style_slides->have_posts() ) : $style_slides->the_post(); ?>
				   	<li style="background-image: url( 
<?php // Устанавливаем миниатюру
	if ( has_post_thumbnail()) {
		$full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$full_image_url[0] . '';
	}
?>
				   	);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-6 col-md-offset-3 col-md-pull-3 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc desc2">
<?php $meta_value = get_post_meta( $post -> ID, 'cat', true ) ?>
					   						<p class="tag"><span><?php echo $meta_value; ?></span></p>
						   					<h1><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
						   					<?php the_content(); ?>
						   					<p><a href="<?php the_permalink(); ?>" class="btn btn-primary btn-outline">Read more</a></p>
											</div>
					   				</div>
					   			</div>
					   		</div>
				   		</div>
				   	</li>
<?php endwhile; ?>
				  	</ul>
			  	</div>
			</aside>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>
<!-- end of Slider -->



			<div class="colorlib-blog">
				<div class="container-wrap">


<!-- Posts -->
<?php $count = 0; ?>
<?php $style_posts = new WP_Query(array('cat' => -2, 'posts_per_page => 12')) ?>
<?php if ( $style_posts->have_posts() ) : ?><?php while ( $style_posts->have_posts() ) : $style_posts->the_post(); ?>


<?php $count += 1; ?>

<!-- 1 -->
<?php if ( $count == 1 ): ?>
					<div class="row row-bottom-padded-md">

						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#">
											<?php echo get_the_category()[0]->cat_name; ?>
										</a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endif; ?>
<!-- 1 -->

<!-- 2 -->
<?php if ( $count == 2 ): ?>
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endif; ?>
<!-- 2 -->


<!-- Mini Slider -->
<?php if ( $count == 3 ): ?>
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-slider">
									<div class="owl-carousel">
										<div class="item">
											<a href="blog.html" class="image-popup-link"><img src="<?php bloginfo('template_url'); ?>/images/blog-3.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
										</div>
										<div class="item">
											<a href="blog.html" class="image-popup-link"><img src="<?php bloginfo('template_url'); ?>/images/blog-4.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
										</div>
									</div>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
					</div>
<?php endif; ?>
<!-- Mini Slider -->


<!-- 3 -->
<?php if ( $count == 3 ): ?>
					<div class="row row-bottom-padded-md">
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endif; ?>
<!-- 3 -->

<!-- 4 -->
<?php if ( $count == 4 ): ?>
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endif; ?>
<!-- 4 -->

<!-- 5 -->
<?php if ( $count == 5 ): ?>
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
					</div>
<?php endif; ?>
<!-- 5 -->

<!-- 6 -->
<?php if ( $count == 6 ): ?>
					<div class="row row-bottom-padded-md">
						<div class="col-md-8">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<div class="video colorlib-video" style="background-image: url(<?php bloginfo('template_url'); ?>/images/blog-6.jpg);">
										<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-play4"></i></a>
										<div class="overlay"></div>
									</div>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endif; ?>
<!-- 6 -->

<!-- 7 -->
<?php if ( $count == 7 ): ?>
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html"><img src="<?php bloginfo('template_url'); ?>/images/blog-8.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
					</div>
<?php endif; ?>
<!-- 7 -->

<!-- 8 -->
<?php if ( $count == 8 ): ?>
					<div class="row row-bottom-padded-md">
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endif; ?>
<!-- 8 -->

<!-- 9 -->
<?php if ( $count == 9 ): ?>
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endif; ?>
<!-- 9 -->

<!-- 10 -->
<?php if ( $count == 10 ): ?>
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
					</div>
<?php endif; ?>
<!-- 10 -->

<!-- 11 -->
<?php if ( $count == 11 ): ?>
					<div class="row row-bottom-padded-md">
						<div class="col-md-4">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endif; ?>
<!-- 11 -->

<!-- 12 -->
<?php if ( $count == 12 ): ?>
						<div class="col-md-8">
							<div class="blog-entry-style animate-box">
								<div class="blog-img">
									<a href="blog.html">
<?php the_post_thumbnail('', array('class' => 'img-responsive')); ?>
									</a>
								</div>
								<div class="desc">
									<p class="meta">
										<span class="cat"><a href="#"><?php echo get_the_category()[0]->cat_name; ?></a></span>
										<span class="date">25 May 2018</span>
										<span class="pos">By <a href="#">Walter</a></span>
									</p>
									<h2><a href="blog.html"><?php the_title(); ?></a></h2>
									<?php the_content(); ?>
								</div>
							</div>
						</div>
					</div>
<?php endif; ?>
<!-- 12 -->

<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>
<!-- end of Posts -->


					<div class="row">
						<div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
							<ul class="pagination">
								<li class="disabled"><a href="#">&laquo;</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>			
		</div>
	</div>

	<!-- jQuery -->
	<script src="<?php bloginfo('template_url') ?>/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="<?php bloginfo('template_url') ?>/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="<?php bloginfo('template_url') ?>/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="<?php bloginfo('template_url') ?>/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="<?php bloginfo('template_url') ?>/js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="<?php bloginfo('template_url') ?>/js/jquery.magnific-popup.min.js"></script>
	<script src="<?php bloginfo('template_url') ?>/js/magnific-popup-options.js"></script>
	<!-- Owl Carousel -->
	<script src="<?php bloginfo('template_url') ?>/js/owl.carousel.min.js"></script>
	<!-- Sticky Kit -->
	<script src="<?php bloginfo('template_url') ?>/js/sticky-kit.min.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="<?php bloginfo('template_url') ?>/js/main.js"></script>
<?php wp_footer(); ?>
	</body>
</html>

