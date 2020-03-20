<?php get_header(); ?>

		<div id="colorlib-main">


<!-- Slider -->
<?php $slides = new WP_Query (array(
	'cat'=>2,'order'=>"ASC",'posts_per_page'=>3
	)) ?>
<?php if ( $slides->have_posts() ) : 
	?>
			<aside id="colorlib-hero" class="js-fullheight">
				<div class="flexslider js-fullheight">
					<ul class="slides">	
	<?php while ( $slides->have_posts() ) : $slides->the_post(); ?>
				   	<li style="background-image: url(

<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
				   	);">
				   		<div class="overlay"></div>
				   		<div class="container-fluid">
				   			<div class="row">
					   			<div class="col-md-12 col-xs-12 js-fullheight slider-text">
					   				<div class="slider-text-inner">
					   					<div class="desc">
<?php $meta_value = get_post_meta( $post -> ID, 'cat', true ) ?>
					   						<p class="tag"><span><?php echo $meta_value; ?></span></p>
						   					<h1><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h1>
						   					<?php the_content(); ?>
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
<!-- end of slider -->



			<div class="colorlib-blog">
				<div class="container-wrap">


<!-- Main Loop of the Posts -->


<?php $count = 0; ?>
<?php 
	$main = new WP_Query( array (
		'cat' => -2,
		'posts_per_page' => 14,
	));
?>
<?php if ( $main->have_posts() ) : ?>

					<div class="row">	

	<?php while ( $main->have_posts() ) : $main->the_post(); ?>

		<?php $count += 1; ?>

		<?php if ($count == 1):  ?>

						<div class="col-md-6">
							<div class="blog-entry animate-box">
								<div class="blog-img" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
								);">
									<div class="desc text-center">

										<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
										<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
										<?php the_content(); ?>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-6">
							<div class="row">

		<?php endif; ?>

		<?php if ($count == 2): ?>

								<div class="col-md-6">
									<div class="blog-entry animate-box">
										<div class="blog-img blog-img2" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
										);">
											<div class="desc text-center">
												
												<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
												<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
												<?php the_content(); ?>
											</div>
										</div>
									</div>
								</div>

		<?php endif; ?>

		<?php if ($count == 3): ?>

								<div class="col-md-6">
									<div class="blog-entry animate-box">
										<div class="blog-img blog-img2" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
										);">
											<div class="desc text-center">
												
												<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
												<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
												<?php the_content(); ?>
											</div>
										</div>
									</div>
								</div>
			
		<?php endif; ?>

		<?php if ($count == 4): ?>

								<div class="col-md-12">
									<div class="blog-entry animate-box">
										<div class="blog-img blog-img2" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
										);">
											<div class="desc text-center">
												<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
												<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
												<?php the_content(); ?>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
			
		<?php endif; ?>


		<?php if ($count == 5): ?>

						<div class="col-md-4">
							<div class="blog-entry animate-box">
								<div class="blog-img" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
								);">
									<div class="desc text-center">
										<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
										<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
										<?php the_content(); ?>
									</div>
								</div>
							</div>
						</div>
			
		<?php endif; ?>


		<?php if ($count == 6): ?>

						<div class="col-md-4">
							<div class="blog-entry animate-box">
								<div class="blog-img" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
								);">
									<div class="desc text-center">
										<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
										<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
										<?php the_content(); ?>
									</div>
								</div>
							</div>
						</div>
			
		<?php endif; ?>


		<?php if ($count == 7): ?>

						<div class="col-md-4">
							<div class="blog-entry animate-box">
								<div class="blog-img" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
								);">
									<div class="desc text-center">
										<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
										<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
										<?php the_content(); ?>
									</div>
								</div>
							</div>
						</div>
			
		<?php endif; ?>


		<?php if ($count == 8): ?>

						<div class="col-md-5">
							<div class="blog-entry animate-box">
								<div class="blog-img" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
								);">
									<div class="desc text-center">
										<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
										<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
										<?php the_content(); ?>
									</div>
								</div>
							</div>
						</div>
			
		<?php endif; ?>


		<?php if ($count == 9): ?>

						<div class="col-md-7">
							<div class="row">
								<div class="col-md-12">
									<div class="blog-entry animate-box">
										<div class="blog-img blog-img2" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
										);">
											<div class="desc text-center">
												<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
												<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
												<?php the_content(); ?>
											</div>
										</div>
									</div>
								</div>
			
		<?php endif; ?>


		<?php if ($count == 10): ?>

								<div class="col-md-12">
									<div class="blog-entry animate-box">
										<div class="blog-img blog-img2" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
										);">
											<div class="desc text-center">
												<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
												<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
												<?php the_content(); ?>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
			
		<?php endif; ?>


		<?php if ($count == 11): ?>

						<div class="col-md-6">
							<div class="row">
								<div class="col-md-6">
									<div class="blog-entry animate-box">
										<div class="blog-img blog-img2" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
										);">
											<div class="desc text-center">
												<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
												<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
												<?php the_content(); ?>
											</div>
										</div>
									</div>
								</div>

		<?php endif; ?>


		<?php if ($count == 12): ?>
								<div class="col-md-6">
									<div class="blog-entry animate-box">
										<div class="blog-img blog-img2" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
										);">
											<div class="desc text-center">
												<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
												<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
												<?php the_content(); ?>
											</div>
										</div>
									</div>
								</div>	
		<?php endif; ?>


		<?php if ($count == 13): ?>
								<div class="col-md-12">
									<div class="blog-entry animate-box">
										<div class="blog-img blog-img2" style="background-image: url(
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?> 
										);">
											<div class="desc text-center">
												<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
												<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
												<?php the_content(); ?>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
		<?php endif; ?>


		<?php if ($count == 14): ?>
						<div class="col-md-6">
							<div class="blog-entry animate-box">
								<div class="blog-img" style="background-image: url( 
<?php
	if (has_post_thumbnail()) {
		$img_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$img_url[0].'';
	}
?>
								);">
									<div class="desc text-center">
										<?php $category = get_the_category();  ?>
										<p class="tag"><span><?php echo $category[0]->cat_name;  ?></span></p>
										<h2 class="head-article"><a href="single.html"><?php the_title(); ?></a></h2>
										<?php the_content(); ?>
									</div>
								</div>
							</div>
						</div>
		<?php endif; ?>


<?php endwhile; ?>
	</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>




<!-- end Main Loop of the Posts -->



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
	<?php wp_footer(); ?>
	</body>
</html>

