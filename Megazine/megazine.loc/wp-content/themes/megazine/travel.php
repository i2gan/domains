<?php
/*
Template Name: Travel Page
*/
?>
<?php get_header(); ?>

        <div id="colorlib-main">
            <div class="colorlib-blog">
                <div class="container-wrap">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="content-wrap">

<?php $travel_posts = new WP_Query(array('posts_per_page' => 8)) ?>
<?php if ( $travel_posts->have_posts() ) : while ( $travel_posts->have_posts() ) : $travel_posts->the_post(); ?>

    <article class="blog-entry-travel animate-box">
        <div class="blog-img" style="background-image: url( 
            <?php
                if ( has_post_thumbnail()) {
                    $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
                    echo ''.$full_image_url[0].'';
                }
            ?>
        );"></div>
        <div class="desc">
            <p class="meta">
                <span class="cat"><a href="#">Style</a></span>
                <span class="date">25 May 2018</span>
                <span class="pos">By <a href="#"><?php the_author(); ?></a></span>
            </p>
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

                            </div>
                        </div>

<?php get_sidebar(); ?>


                    </div>
                </div>
            </div>
        </div>
    </div>

<?php get_footer(); ?>

