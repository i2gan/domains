<?php /* Template Name: travel_php */ ?>
<?php get_header(); ?>

		<div id="colorlib-main">
			<div class="colorlib-blog">
				<div class="container-wrap">
					<div class="row">

<?php $travel_posts = new WP_Query(array(
	'cat' => -2,
	'posts_per_page' => 8
)) ?>

<?php if ( $travel_posts->have_posts() ) : ?>
						<div class="col-md-9">
							<div class="content-wrap">
	<?php while ( $travel_posts->have_posts() ) : $travel_posts->the_post(); ?>
								<article class="blog-entry-travel animate-box">
									<div class="blog-img" style="background-image: url( 
<?php // Устанавливаем миниатюру
	if ( has_post_thumbnail()) {
		$full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$full_image_url[0] . '';
	}
?>
									);"></div>
									<div class="desc">
										<p class="meta">
											<span class="cat"><a href="#">Style</a></span>
											<span class="date"><?php the_time( 'd M Y' ) ?></span>
											<span class="pos">By <a href="#"><?php the_author(); ?></a></span>
										</p>
										<h2><a href="single.html"><?php the_title(); ?></a></h2>
										<?php the_content(); ?>
										<p><a href="<?php the_permalink(); ?>" class="btn btn-primary with-arrow">Read More <i class="icon-arrow-right22"></i></a></p>
									</div>
								</article>
<?php endwhile; ?>
							</div>
						</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>


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

