<?php get_header(); ?>

        <div id="colorlib-hero" class="js-fullheight">
            <div class="owl-carousel">

<?php $slider = new WP_Query(array('post_type' => 'slider', 'order' => 'ASC')); ?>

<?php if ( $slider->have_posts() ) : while ( $slider->have_posts() ) : $slider->the_post(); ?>

                <div class="item">
                    <div class="hero-flex js-fullheight">
                        <div class="col-three-forth">
                            <div class="hero-img js-fullheight" style="background-image: url( 
<?php
    if ( has_post_thumbnail() ) {
        $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
        echo ''.$full_image_url[0].'';
    }
?>
                            );"></div>
                        </div>
                        <div class="col-one-forth js-fullheight">
                            <div class="display-t js-fullheight">
                                <div class="display-tc js-fullheight">
                                    <h2 class="number">01/03</h2>
                                    <div class="text-inner">
                                        <div class="desc">
                                            <?php the_content(); ?>
                                            <p><a href="works" class="btn-view">View Galleries <i class="icon-arrow-right3"></i></a></p>
                                        </div>
                                    </div>
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





            

<?php include('link_js.php'); ?>