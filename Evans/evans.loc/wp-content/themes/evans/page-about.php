<?php /* Template Name: AboutPage */ ?>
<?php if (is_page()){
  include('header-page.php');
} ?>


    <section class="ftco-section ftco-intro">
    	<div class="container">
    		<div class="row justify-content-end">
    			<div class="col-md-4 d-flex">
    				<div class="img" style="background-image: url(<?php // Устанавливаем миниатюру
if ( has_post_thumbnail()) {
$full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
echo ''.$full_image_url[0] . '';
}
?>)"></div>
    			</div>
    			<div class="col-md-8 py-md-5 pt-4 p-md-5">

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
	<?php the_content(); ?>
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>
    				
    			</div>
    		</div>
    	</div>
    </section>


        <section class="services-section py-5 py-md-0">
      <div class="container">
        <div class="row no-gutters d-flex">

<?php 
  $skils = new WP_Query('cat=10&order=ASC&posts_per_page=4');
?>
<?php if ( $skils->have_posts() ) : while ( $skils->have_posts() ) : $skils->the_post(); ?>

          <div class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">

<?php if ( $class = get_post_meta( $post->ID, 'classes', true ) ): ?>
  <div class="<?php echo $class; ?>">
<?php endif; ?>

<?php if ( $icon = get_post_meta( $post->ID, 'icon', true ) ): ?>
  <div class="icon"><span class="<?php echo $icon; ?>"></span></div>
<?php endif; ?>
              <div class="media-body">
                <h3 class="heading mb-3"><?php the_title(); ?></h3>
                <?php the_content(); ?>
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
    </section>


    <section class="testimony-section">
      <div class="container">
        <div class="row ftco-animate justify-content-center">
        	<div class="col-md-5 d-flex">
        		<div class="testimony-img" style="background-image: url(<?php bloginfo('template_url'); ?>/images/bg_2.jpg);"></div>
        	</div>
          <div class="col-md-7 py-5 pl-md-5">
          	<div class="heading-section heading-section-white pt-4 ftco-animate">
		          <h2 class="mb-0">Customer Says</h2>
		        </div>
            <div class="carousel-testimony owl-carousel ftco-owl">

<?php if ( have_posts() ) : 
	query_posts( 'cat=11' );
	while ( have_posts() ) : the_post(); ?>

  <div class="item">
    <div class="testimony-wrap pb-4">
      <div class="text">
        <p class="mb-4"><?php the_content(); ?></p>
      </div>
      <div class="d-flex">
          <div class="user-img" style="background-image: url(

<?php
if (has_post_thumbnail()) {
  $full_image_url = wp_get_attachment_image_src( get_post_thumbnail_id(), 'full' );
  echo ''.$full_image_url[0].'';
}
?>

          )">
          </div>
          <div class="pos ml-3">
          	<p class="name"><?php echo get_post_meta( $post->ID, 'customer_name', true ) ?></p>
            <span class="position"><?php echo get_post_meta( $post->ID, 'customer_pos', true ) ?></span>
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
      </div>
    </section>

    <section class="ftco-section ftco-intro bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-10 text-center">
            <h2 class="mb-0 font-primary">We've done work of <span class="number" data-number="300">0</span> Portfolio</h2>
          </div>
        </div>
      </div>
    </section>


    <?php get_footer(); ?>