<?php
/*
Template Name: Fashion Page
*/
?>

<?php get_header(); ?>


        <div id="colorlib-main">
            <div class="colorlib-blog">
                <div class="container-wrap">

                    <div class="row row-pb-lg">
                        <div class="col-md-12 blog-slider">
                            <div class="owl-carousel1">

<?php $fashion_posts = new WP_Query(array('posts_per_page' => 5, 'order' => 'ASC')); ?>
<?php if ( $fashion_posts->have_posts() ) : while ( $fashion_posts->have_posts() ) : $fashion_posts->the_post(); ?>

    <div class="item">
        <div class="blog-entry">
            <div class="blog-img" style="background-image: url(
                <?php 
                    if ( has_post_thumbnail ) {
                        $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
                        echo ''.$full_image_url[0].'';
                    }
                ?>
            );">
                <div class="desc desc2 text-center">
                    <p class="tag"><span>Nature</span></p>
                    <div class="desc-bottom">
                        <h2 class="head-article"><a href="#"><?php the_title(); ?></a></h2>
                        <?php the_excerpt(); ?>
                    </div>
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






                    <div class="row">
                        <div class="col-md-9">
                            <div class="content-wrap">

<?php $wp_query = new WP_Query(array('posts_per_page' => 7)) ?>
<?php if ( $wp_query->have_posts() ) : while ( $wp_query->have_posts() ) : $wp_query->the_post(); ?>

    <article class="animate-box">
        <div class="blog-img" style="background-image: url( 
            <?php 
                if (has_post_thumbnail()) {
                    $full_image_url_2 = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
                    echo ''.$full_image_url_2[0].'';
                }
            ?>
        );"></div>
        <div class="desc">
            <div class="meta">
                <p>
                    <span>Nature</span>
                    <span>25 May 2018</span>
                    <span><?php the_author(); ?> </span>
                    <span><a href="#">3 Comments</a></span>
                </p>
            </div>
            <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
            <?php the_excerpt(); ?>
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
                    <?php if($wp_query->max_num_pages > 1): ?>
                                <?php wp_corenavi() ?>
                            <?php endif; ?>
                    <!-- <ul class="pagination">
                        <li class="disabled"><a href="#">&laquo;</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul> -->
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


<?php get_footer(); ?>