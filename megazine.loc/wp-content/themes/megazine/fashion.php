<?php /* Template Name: fashion_php */ ?>
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
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/flexslider.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/magnific-popup.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/owl.carousel.min.css">
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/style.css">

	<!-- Modernizr JS -->
	<script src="<?php bloginfo('template_url'); ?>/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<h1 id="colorlib-logo"><a href="index.html">Megazine</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="style.html">Style</a></li>
					<li class="colorlib-active"><a href="fashion.html">Fashion</a></li>
					<li><a href="travel.html">Travel</a></li>
					<li><a href="sports.html">Sports</a></li>
					<li><a href="video.html">Video</a></li>
					<li><a href="archives.html">Archives</a></li>
				</ul>
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
			<div class="colorlib-blog">
				<div class="container-wrap">

<?php $fashion_slider = new WP_Query ( array (
	'cat' => -2,
	'posts_per_page' => 5,
	'order' => 'ASC'
) ) ?>

<?php if ( $fashion_slider->have_posts() ) : ?>

					<div class="row row-pb-lg">
						<div class="col-md-12 blog-slider">
							<div class="owl-carousel1">	

	<?php while ( $fashion_slider->have_posts() ) : $fashion_slider->the_post(); ?>

								<div class="item">
									<div class="blog-entry">
										<div class="blog-img" style="background-image: url( 
<?php // Устанавливаем миниатюру
	if ( has_post_thumbnail()) {
		$full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$full_image_url[0] . '';
	}
?>
										);">
											<div class="desc desc2 text-center">
												<p class="tag"><span><?php echo get_the_category()[0]->cat_name ?></span></p>
												<div class="desc-bottom">
													<h2 class="head-article"><a href="#"><?php the_title(); ?></a></h2>
													<?php the_content(); ?>
												</div>
											</div>
										</div>
									</div>
								</div>

<?php endwhile; ?>
							</div>
						</div>
					</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>


					<div class="row">
						<div class="col-md-9">
							<div class="content-wrap">

								<article class="animate-box">
									<div class="blog-img">
										<div class="video colorlib-video" style="background-image: url(<?php bloginfo('template_url'); ?>/images/blog-6.jpg);">
											<a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo"><i class="icon-play4"></i></a>
											<div class="overlay"></div>
										</div>
									</div>
									<div class="desc">
										<div class="meta">
											<p>
												<span>Video</span>
												<span>25 May 2018</span>
												<span>admin </span>
												<span><a href="single.html">4 Comments</a></span>
											</p>
										</div>
										<h2><a href="single.html">Watch Liam Neeson Movies</a></h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, qui quod ipsum harum id, minima nesciunt! Saepe soluta, vitae quas expedita voluptatem voluptates placeat numquam provident quis, atque nisi iure?</p>
										<p><a href="single.html" class="btn btn-primary with-arrow">Read More <i class="icon-arrow-right22"></i></a></p>
									</div>
								</article>

<?php $fashion_posts = new WP_Query(array(
	'cat' => -2,
	'posts_per_page' => 5
)) ?>

<?php if ( $fashion_posts->have_posts() ) : while ( $fashion_posts->have_posts() ) : $fashion_posts->the_post(); ?>
								<article class="animate-box">
									<div class="blog-img" style="background-image: url(
<?php // Устанавливаем миниатюру
	if ( has_post_thumbnail()) {
		$full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$full_image_url[0] . '';
	}
?>
										);"></div>
									<div class="desc">
										<div class="meta">
											<p>
												<span><?php echo get_the_category()[0]->cat_name ?></span>
												<span><?php the_time('d M Y'); ?></span>
												<span><?php the_author(); ?> </span>
												<span><a href="#">3 Comments</a></span>
											</p>
										</div>
										<h2><a href="single.html"><?php the_title(); ?></a></h2>
										<?php the_content(); ?>
										<p><a href="<?php the_permalink(); ?>" class="btn btn-primary with-arrow">Read More <i class="icon-arrow-right22"></i></a></p>
									</div>
								</article>
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

								

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

<?php get_sidebar(); ?>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="<?php bloginfo('template_url'); ?>/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="<?php bloginfo('template_url'); ?>/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="<?php bloginfo('template_url'); ?>/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="<?php bloginfo('template_url'); ?>/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="<?php bloginfo('template_url'); ?>/js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="<?php bloginfo('template_url'); ?>/js/jquery.magnific-popup.min.js"></script>
	<script src="<?php bloginfo('template_url'); ?>/js/magnific-popup-options.js"></script>
	<!-- Owl Carousel -->
	<script src="<?php bloginfo('template_url'); ?>/js/owl.carousel.min.js"></script>
	<!-- Sticky Kit -->
	<script src="<?php bloginfo('template_url'); ?>/js/sticky-kit.min.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="<?php bloginfo('template_url'); ?>/js/main.js"></script>

	</body>
</html>