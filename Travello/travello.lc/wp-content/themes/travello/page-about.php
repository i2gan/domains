<?php /* Template Name: Page_about */ ?>
<?php include 'template-parts/page-header.php'; ?>

	<!-- About -->

<?php $the_query = new WP_Query('p=8&post_type=page'); ?>
<?php if ( have_posts() ) : ?>

	<div class="about">
		<div class="container">
			

	<?php while ( have_posts() ) : the_post(); ?>
		<div class="row">
				<div class="col text-center">
					<div class="section_subtitle">simply amazing places</div>
					<div class="section_title"><h2>A few words about us</h2></div>
				</div>
			</div>
			<div class="row about_row">
				<div class="col-lg-6">
					<div class="about_content">

		<?php the_content(); ?>

<?php endwhile; ?>
						<div class="button about_button"><a href="#">read more</a></div>
					</div>
				</div>
				<div class="col-lg-6">

<?php if ($about_image = get_post_meta( $post->ID, 'about_image', true )): ?>
					<div class="about_image"><img src="<?php echo $about_image; ?>" alt=""></div>
<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>


	<!-- Milestones -->

<?php $milestones = new WP_Query ( array ( 'cat' => 9, 'post_per_page' => 4, 'order' => 'ASC' ) ) ?>
<?php if ( $milestones->have_posts() ) : ?>

	<div class="milestones">
		<div class="container">
			<div class="row">

	<?php while ( $milestones->have_posts() ) : $milestones->the_post(); ?>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><?php the_post_thumbnail(); ?></div>
					<?php if ($count  = get_post_meta( $post->ID, 'count', true )) : ?>
						<div class="milestone_counter" data-end-value="<?php echo $count; ?>">0</div>
					<?php endif; ?>
						<div class="milestone_text"><?php the_title(); ?></div>
					</div>
				</div>

<?php endwhile; ?>

			</div>
		</div>
	</div>

<?php else: ?>
<!-- no posts found -->
<?php endif; ?>


<!-- Why Choose Us -->

<?php $why = new WP_Query( array ('cat' => 10, 'posts_per_page' => 3, 'order' => 'ASC') ) ?>
<?php if ( $why->have_posts() ) : ?>

<div class="why">
	<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<?php bloginfo('template_url'); ?>/images/why.jpg" data-speed="0.8"></div>
	<div class="container">
		<div class="row">
			<div class="col text-center">
			<?php if ($desc = category_description(10)) : ?>
				<div class="section_subtitle"><?php echo strip_tags($desc); ?></div>
			<?php endif; ?>
				<div class="section_title"><h2><?php echo get_cat_name( 10 ); ?></h2></div>
			</div>
		</div>
		<div class="row why_row">	

	<?php while ( $why->have_posts() ) : $why->the_post(); ?>

			<!-- Why item -->
			<div class="col-lg-4 why_col">
				<div class="why_item">
					<div class="why_image">
						<!-- <img src="images/why_1.jpg" alt=""> -->
						<?php the_post_thumbnail( ); ?>
						<div class="why_icon d-flex flex-column align-items-center justify-content-center">
						<?php if ($icon = get_post_meta( $post->ID, 'about_image', true )) : ?>
							<img src="<?php echo $icon; ?>" alt="">
						<?php endif; ?>
						</div>
					</div>
					<div class="why_content text-center">
						<div class="why_title"><?php the_title(); ?></div>
						<div class="why_text">
							<?php the_content(); ?>
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



<!-- Team -->

<?php $team = new WP_Query ( array ( 'cat' => 11, 'post_per_page' => 4, 'order' => 'ASC' ) ); ?>
<?php if ( $team->have_posts() ) : ?>

<div class="team">
	<div class="container">
		<div class="row">
			<div class="col text-center">
				<div class="section_subtitle">simply amazing places</div>
				<div class="section_title"><h2>Meet the Team</h2></div>
			</div>
		</div>
		<div class="row team_row">

	<?php while ( $team->have_posts() ) : $team->the_post(); ?>

			<!-- Team Item -->
			<div class="col-xl-3 col-md-6 team_col">
				<div class="team_item d-flex flex-column align-items-center justify-content-start text-center">
					<div class="team_image"><?php the_post_thumbnail(  ); ?></div>
					<div class="team_content">
						<div class="team_title"><a href="#"><?php the_title(); ?></a></div>
						<div class="team_text">
							<?php the_content(); ?>
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



	<!-- Footer -->

	<footer class="footer">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<?php bloginfo('template_url'); ?>/images/footer_1.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter">
						<div class="newsletter_title_container text-center">
							<div class="newsletter_title">Subscribe to our newsletter to get the latest trends & news</div>
							<div class="newsletter_subtitle">Join our database NOW!</div>
						</div>
						<div class="newsletter_form_container">
							<form action="#" class="newsletter_form d-flex flex-md-row flex-column align-items-start justify-content-between" id="newsletter_form">
								<div class="d-flex flex-md-row flex-column align-items-start justify-content-between">
									<div><input type="text" class="newsletter_input newsletter_input_name" id="newsletter_input_name" placeholder="Name" required="required"><div class="input_border"></div></div>
									<div><input type="email" class="newsletter_input newsletter_input_email" id="newsletter_input_email" placeholder="Your e-mail" required="required"><div class="input_border"></div></div>
								</div>
								<div><button class="newsletter_button">subscribe</button></div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row footer_contact_row">
				<div class="col-xl-10 offset-xl-1">
					<div class="row">

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="<?php bloginfo('template_url'); ?>/images/sign.svg" alt=""></div>
								<div class="footer_contact_title">give us a call</div>
								<div class="footer_contact_list">
									<ul>
										<li>Office Landline: +44 5567 32 664 567</li>
										<li>Mobile: +44 5567 89 3322 332</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="<?php bloginfo('template_url'); ?>/images/trekking.svg" alt=""></div>
								<div class="footer_contact_title">come & drop by</div>
								<div class="footer_contact_list">
									<ul style="max-width:190px">
										<li>4124 Barnes Street, Sanford, FL 32771</li>
									</ul>
								</div>
							</div>
						</div>

						<!-- Footer Contact Item -->
						<div class="col-xl-4 footer_contact_col">
							<div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
								<div class="footer_contact_icon"><img src="<?php bloginfo('template_url'); ?>/images/around.svg" alt=""></div>
								<div class="footer_contact_title">send us a message</div>
								<div class="footer_contact_list">
									<ul>
										<li>youremail@gmail.com</li>
										<li>Office@yourbusinessname.com</li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="col text-center"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> </div>
	</footer>
</div>

<script src="<?php bloginfo('template_url'); ?>/js/jquery-3.2.1.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/styles/bootstrap4/popper.js"></script>
<script src="<?php bloginfo('template_url'); ?>/styles/bootstrap4/bootstrap.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/greensock/TweenMax.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/greensock/TimelineMax.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/greensock/animation.gsap.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/easing/easing.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/parallax-js-master/parallax.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/js/about.js"></script>

<script type="text/javascript">
	$('.why_image img').removeAttr('width height');
</script>

<?php wp_footer(); ?>
</body>
</html>