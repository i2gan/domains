<?php /* Template Name: Page_News */ ?>
<?php include 'template-parts/page-header.php'; ?>



<!-- News -->
	<div class="news">
		<div class="container">
			<div class="row">

<?php $news_qwery = new WP_Query ( array ( 'cat' => 12, 'posts_per_page' => 3 ) ) ?>
<?php if ( $news_qwery->have_posts() ) : ?>


				<!-- News Container -->
				<div class="col-lg-8">
					<div class="news_container">

	<?php while ( $news_qwery->have_posts() ) : $news_qwery->the_post(); ?>

						<!-- News Post -->
						<div class="news_post">
							<div class="news_post_image"><?php the_post_thumbnail(); ?></div>
							<div class="news_post_content">
								<div class="news_post_date d-flex flex-row align-items-end justify-content-start">
									<div><?php the_time('d'); ?></div>
									<div><?php the_time('F'); ?></div>
								</div>
								<div class="news_post_title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></div>
								<div class="news_post_category">
									<ul>
										<li><a href="#">lifestyle & travel</a></li>
									</ul>
								</div>
								<div class="news_post_text">
									<?php the_content(); ?>
								</div>
								<div class="news_post_link"><a href="<?php the_permalink(); ?>">Read More</a></div>
							</div>
						</div>

<?php endwhile; ?>
					</div>

					<!-- Pagination -->
					<div class="pagination">
						<ul class="d-flex flex-row align-items-start justify-content-start">
							<li class="active"><a href="#">1.</a></li>
							<li><a href="#">2.</a></li>
							<li><a href="#">3.</a></li>
							<li><a href="#">4.</a></li>
							<li><a href="#">5.</a></li>
						</ul>
					</div>
				</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>



				<!-- News Sidebar -->
				<div class="col-lg-4">
					<div class="news_sidebar">

						<!-- Categories -->
						<div class="categories">
							<div class="sidebar_title">Categories</div>
							<div class="sidebar_list">
								<ul>
									<li><a href="#"><div class="d-flex flex-row align-items-start justify-content-start">Travels<span class="ml-auto">(09)</span></div></a></li>
									<li><a href="#"><div class="d-flex flex-row align-items-start justify-content-start">Organization<span class="ml-auto">(12)</span></div></a></li>
									<li><a href="#"><div class="d-flex flex-row align-items-start justify-content-start">Tips & Tricks<span class="ml-auto">(16)</span></div></a></li>
									<li><a href="#"><div class="d-flex flex-row align-items-start justify-content-start">Uncategorized<span class="ml-auto">(22)</span></div></a></li>
								</ul>
							</div>
						</div>

<?php if ( $news_qwery->have_posts() ) : ?>

						<!-- Latest News -->
						<div class="latest">
							<div class="sidebar_title">Latest News</div>
							<div class="latest_container">

	<?php while ( $news_qwery->have_posts() ) : $news_qwery->the_post(); ?>

								<!-- Latest Post -->
								<div class="latest_post d-flex flex-row align-items-start justify-content-start">
		<?php if ( $icon = get_post_meta( $post->ID, 'icon', true ) ) : ?>
									<div class="latest_post_image"><img src="<?php echo $icon; ?>" alt=""></div>
		<?php endif; ?>
									<div class="latest_post_content">
										<div class="latest_post_date d-flex flex-row align-items-end justify-content-start">
											<div class="latest_post_day"><?php the_time('d'); ?></div>
											<div class="latest_post_month"><?php the_time('F'); ?></div>
										</div>
										<div class="latest_post_title"><a href="<?php the_permalink(); ?>">Best tips to travel light</a></div>
										<div class="latest_post_text"><p>Pellentesque sit amet..</p></div>
									</div>
								</div>

<?php endwhile; ?>
							</div>
						</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>




						<div class="travello">
							<div class="background_image" style="background-image:url(images/travello.jpg)"></div>
							<div class="travello_content">
								<div class="travello_content_inner">
									<div></div>
									<div></div>
								</div>
							</div>
							<div class="travello_container">
								<a href="#">
									<div class="d-flex flex-column align-items-center justify-content-end">
										<span class="travello_title">Get a 20% Discount</span>
										<span class="travello_subtitle">Buy Your Vacation Online Now</span>
									</div>
								</a>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

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
								<div class="footer_contact_icon"><img src="images/sign.svg" alt=""></div>
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
								<div class="footer_contact_icon"><img src="images/trekking.svg" alt=""></div>
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
								<div class="footer_contact_icon"><img src="images/around.svg" alt=""></div>
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
<script src="<?php bloginfo('template_url'); ?>/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/easing/easing.js"></script>
<script src="<?php bloginfo('template_url'); ?>/plugins/parallax-js-master/parallax.min.js"></script>
<script src="<?php bloginfo('template_url'); ?>/js/news.js"></script>
</body>
</html>