						<div class="col-md-3 sticky-parent">
							<div class="sidebar" id="sticky_item">
								<div class="side animate-box">
<?php get_search_form() ?>

								</div>


 								<div class="side animate-box">
									<h2 class="sidebar-heading">Categories</h2>
									<p>
										<ul class="category">
<?php
  $categories=  get_categories();
  foreach ($categories as $cat) {
  	echo '<li><a href="#"><i class="icon-check"></i> '.$cat->cat_name.'</a></li>';
  }
 ?>

										</ul>
									</p>
								</div>

<?php $recent = new WP_Query ( array (
	'cat' => -2,
	'posts_per_page' => 3
) ) ?>

<?php if ( $recent->have_posts() ) : ?>

								<div class="side animate-box">
									<h2 class="sidebar-heading">Recent Blog</h2>

	<?php while ( $recent->have_posts() ) : $recent->the_post(); ?>

									<div class="f-blog">
										<a href="blog.html" class="blog-img" style="background-image: url( 
<?php // Устанавливаем миниатюру
	if ( has_post_thumbnail()) {
		$full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
		echo ''.$full_image_url[0] . '';
	}
?>
										); ?>/images/blog-1.jpg);">
										</a>
										<div class="desc">
											<h3><a href="blog.html"><?php the_title(); ?></a></h3>
											<p class="admin"><span><?php the_time('d M Y') ?></span></p>
										</div>
									</div>

<?php endwhile; ?>
								</div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>


								<div class="side animate-box">
									<h2 class="sidebar-heading">Instagram</h2>
									<div class="instagram-entry">
										<a href="#" class="instagram text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/gallery-1.jpg);">
										</a>
										<a href="#" class="instagram text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/gallery-2.jpg);">
										</a>
										<a href="#" class="instagram text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/gallery-3.jpg);">
										</a>
										<a href="#" class="instagram text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/gallery-4.jpg);">
										</a>
										<a href="#" class="instagram text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/gallery-5.jpg);">
										</a>
										<a href="#" class="instagram text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/gallery-6.jpg);">
										</a>
										<a href="#" class="instagram text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/gallery-7.jpg);">
										</a>
										<a href="#" class="instagram text-center" style="background-image: url(<?php bloginfo('template_url'); ?>/images/gallery-8.jpg);">
										</a>
									</div>
								</div>
								<div class="side animate-box">
									<div class="form-group">
										<input type="text" class="form-control form-email text-center" id="email" placeholder="Enter your email">
										<button type="submit" class="btn btn-primary btn-subscribe">Subscribe</button>
									</div>
								</div>
							</div>
						</div>