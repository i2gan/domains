<?php get_header(); ?>

	<!-- Intro -->

<?php $intro = new WP_Query( array ( 'cat' => 7, 'order' => 'ASC', 'posts_per_page' => 3 ) ) ?>
<?php if ( $intro->have_posts() ) : ?>

	<div class="intro">
		<div class="intro_background" style="background-image:url(<?php bloginfo('template_url'); ?>/images/intro.png)"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="intro_container">
						<div class="row">	

	<?while ( $intro->have_posts() ) : $intro->the_post(); ?>

	<!-- Intro Item -->
	<div class="col-lg-4 intro_col">
		<div class="intro_item d-flex flex-row align-items-end justify-content-start">
		<?php if ( $icon = get_post_meta( $post->ID, 'icon', true ) ) : ?>
			<div class="intro_icon"><img src="<?php echo $icon; ?>" alt=""></div>
		<?php endif; ?>
			
			<div class="intro_content">
				<div class="intro_title"><?php the_title(); ?></div>
				<div class="intro_subtitle"><?php the_content(); ?></div>
			</div>
		</div>
	</div>

<?php endwhile; ?>

						</div>
					</div>
				</div>		
			</div>
		</div>
	</div>

<?php else: ?>
<!-- no posts found -->
<?php endif; ?>


	<!-- Destinations -->

<?php $id = 3; ?>
<?php $destinations = new WP_Query ( array ('cat'  => $id, 'posts_per_page' => 6 )); ?>
<?php if ( $destinations->have_posts() ) : ?>

	<div class="destinations" id="destinations">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_subtitle">simply amazing places</div>
					<div class="section_title"><h2>Popular Destinations</h2></div>
				</div>
			</div>
			<div class="row destinations_row">
				<div class="col">
					<div class="destinations_container item_grid">

	<?php while ( $destinations->have_posts() ) : $destinations->the_post(); ?>
						<!-- Destination -->
						<div class="destination item">
							<div class="destination_image">
								<?php the_post_thumbnail(); ?>
							</div>
							<div class="destination_content">
								<div class="destination_title"><a href="destinations.html"><?php the_title(); ?></a></div>
								<?php the_content(); ?>
							</div>
						</div>
<?php endwhile; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>



	<!-- Testimonials -->

<?php $testimonials = new WP_Query( array ( 'cat' => 8 ) ) ?>

<?php if ( $testimonials->have_posts() ) : ?>

	<div class="testimonials" id="testimonials">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<?php bloginfo('template_url'); ?>/images/testimonials.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_subtitle">simply amazing places</div>
					<div class="section_title"><h2>Testimonials</h2></div>
				</div>
			</div>
			<div class="row testimonials_row">
				<div class="col">

					<!-- Testimonials Slider -->
					<div class="testimonials_slider_container">
						<div class="owl-carousel owl-theme testimonials_slider">

	<?php while ( $testimonials->have_posts() ) : $testimonials->the_post(); ?>

	<!-- Slide -->
	<div class="owl-item text-center">
		<div class="testimonial"><?php the_content(); ?></div>
		<div class="testimonial_author">
			<div class="testimonial_author_content d-flex flex-row align-items-end justify-content-start">
				<div><?php the_title(); ?>,</div>
			<?php if ( $testimon = get_post_meta( $post->ID, 'positions', true ) ) : ?>
				<div><?php echo $testimon; ?></div>
			<?php endif; ?>
				
			</div>
		</div>
	</div>

<?php endwhile; ?>

						</div>
					</div>
				</div>
			</div>
		</div>

<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

		<div class="test_nav">
			<ul class="d-flex flex-column align-items-end justify-content-end">
				<li><a href="#">City Breaks Clients<span>01</span></a></li>
				<li><a href="#">Cruises Clients<span>02</span></a></li>
				<li><a href="#">All Inclusive Clients<span>03</span></a></li>
			</ul>
		</div>
	</div>





	<!-- News -->

	<div class="news" id="news">
		<div class="container">
			<div class="row">

<?php $id = 6; ?>
<?php $main_news = new WP_Query( array ( 'cat' => $id, 'posts_per_page' => 3 ) ) ?>
<?php if ( $main_news->have_posts() ) : ?>


				<div class="col-xl-8">
					<div class="news_container">

	<?php while ( $main_news->have_posts() ) : $main_news->the_post(); ?>
						<!-- News Post -->
						<div class="news_post d-flex flex-md-row flex-column align-items-start justify-content-start">
							<div class="news_post_image"><?php the_post_thumbnail(); ?></div>
							<div class="news_post_content">
								<div class="news_post_date d-flex flex-row align-items-end justify-content-start">
									<div><?php the_time('d') ?></div>
									<div><?php the_time('M') ?></div>
								</div>
								<div class="news_post_title"><a href="#"><?php the_title(); ?></a></div>
								<div class="news_post_category">
									<ul>
										<li><a href="#">lifestyle & travel</a></li>
									</ul>
								</div>
								<div class="news_post_text">
									<?php the_content(); ?>
								</div>
							</div>
						</div>
<?php endwhile; ?>
					</div>
				</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>



<!-- News Sidebar -->
<?php $ad_query = new WP_Query('p=93') ?>
<?php if ( $ad_query->have_posts() ) : ?>

				<div class="col-xl-4">
					<div class="travello">

	<?php while ( $ad_query->have_posts() ) : $ad_query->the_post(); ?>
						<div class="background_image" style="background-image:url(<?php echo get_post_meta( $post->ID, 'bg_image_url', true ) ?>)"></div>
						<div class="travello_content">
							<div class="travello_content_inner">
								<div></div>
								<div></div>
							</div>
						</div>
						<div class="travello_container">
							<a href="#">
								<div class="d-flex flex-column align-items-center justify-content-end">

								<?php if ( $travello_title = get_post_meta( $post->ID, 'travello_title', true ) ) : ?>
									<span class="travello_title"><?php echo $travello_title; ?></span>
								<?php endif; ?>
								<?php if ( $travello_subtitle = get_post_meta( $post->ID, 'travello_subtitle', true ) ) : ?>
									<span class="travello_subtitle"><?php echo $travello_subtitle; ?></span>
								<?php endif; ?>
									
									
								</div>
							</a>
						</div>
<?php endwhile; ?>
					</div>
				</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

					
				
			</div>
		</div>
	</div>

<?php get_footer(); ?>

