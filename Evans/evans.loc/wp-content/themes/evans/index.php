<?php get_header(); ?>

<?php $post_about = new WP_Query('post_type=page&p=1'); ?>
<?php if ( $post_about->have_posts() ) : while ( $post_about->have_posts() ) : $post_about->the_post(); ?>
  <?php the_title(); ?>
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

    <section class="ftco-section ftco-intro">
      <div class="container">
        <div class="row justify-content-end">
          <div class="col-md-8">
<?php
  $id = 7;
  $post = get_page($id);
  echo $post->post_content;
?>
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


    <section class="ftco-section ftco-portfolio">
    	<div class="container-fluid">
    		<div class="row justify-content-center pb-3">
          <div class="col-md-12 mb-5 heading-section text-center ftco-animate">
            <h2 class="mb-5">Latest &amp; <span>Greatest</span></h2>
          </div>
        </div>
    	</div>


<?php $count = 0; ?>
<?php if ( have_posts() ) : ?>
  
  <?php while ( have_posts() ) : the_post(); ?>
    <?php $count++; ?>
    <?php if ($count % 2 != 0) { ?>
            <div class="container">
              <div class="row no-gutters">
                <div class="col-md-12 portfolio-wrap">
                  <div class="row no-gutters align-items-center">

                    <div class="col-md-5 img js-fullheight" style="background-image: url(
<?php 
// Устанавливаем миниатюру
if ( has_post_thumbnail()) {
$full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
echo ''.$full_image_url[0] . '';
}
?>
                     );">

                      
                    </div>
                    <div class="col-md-7">
                      <div class="text pt-5 pl-md-5 pl-md-4 ftco-animate">
                        <div class="px-4 px-lg-4">
                          <div class="desc">

                            <div class="top">
                              <span class="subheading">
<?php
$category = get_the_category(); 
echo $category[0]->cat_name;
?>
                               {<?php the_time('d/m/Y'); ?>}</span>
                              <h2 class="mb-4"><a href="work.html"><?php the_title(); ?></a></h2>
                            </div>

                            <div class="absolute">
                              <?php the_content(); ?>
                              <p><a href="#" class="custom-btn">View Portfolio</a></p>
                            </div>

                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
    <?php } else { ?>
            <div class="container-fluid px-0 portfolio-entry">
              <div class="row no-gutters d-md-flex justify-content-end text-wrapper">
                <div class="one-half img js-fullheight" style="background-image: url(
<?php // Устанавливаем миниатюру
if ( has_post_thumbnail()) {
$full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
echo ''.$full_image_url[0] . '';
}
?>
                );"></div>
                <div class="one-half half-text d-flex justify-content-end align-items-center ftco-animate">
                  <div class="text align-items-center d-flex">
                    <div class="desc pt-5 pl-5 pr-5 pt-lg-0 pl-lg-5 pl-xl-0 pr-xl-0">

                      <div class="top">
                        <span class="subheading">
<?php
$category = get_the_category(); 
echo $category[0]->cat_name;
?>
                         {<?php the_time('d/m/Y'); ?>}</span>
                        <h2 class="mb-4"><a href="work.html"><?php the_title(); ?></a></h2>
                      </div>

                      <div class="absolute">
                        <?php the_content(); ?>
                        <p><a href="#" class="custom-btn">View Portfolio</a></p>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
    <?php } ?>
  

<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>



    </section>

    <?php get_footer(); ?>