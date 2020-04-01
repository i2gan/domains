<?php
/*
Template Name: Sports Page
*/
?>
<?php get_header(); ?>

        <div id="colorlib-main">

            <div class="colorlib-featured">
                <div class="row">

<?php $featured_sports = new WP_Query(array('post_type' => 'sport_post', 'order' => 'ASC')); ?>
<?php $count = 0; ?>
<?php if ( $featured_sports->have_posts() ) : while ( $featured_sports->have_posts() ) : $featured_sports->the_post(); ?>
    <?php $count += 1; ?>
    <?php if ($count == 1): ?>

        <div class="col-md-8">

            <div class="featured-post">
                <div class="blog-img" style="background-image: url( 
                    <?php 
                        if ( has_post_thumbnail() ) {
                            $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
                            echo ''.$full_image_url[0].'';
                        }
                    ?>
                );">
                    <div class="desc">
                        <p class="tag"><span><?php the_title(); ?></span></p>
                        <h2><a href="<?php the_permalink(); ?>"><?php the_content(); ?></a></h2>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-4">

    <?php else: ?>

        <div class="featured-post2">
            <a href="<?php the_permalink(); ?>" class="blog-img" style="background-image: url(
                <?php 
                    if ( has_post_thumbnail() ) {
                        $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
                        echo ''.$full_image_url[0].'';
                    }
                ?>
            );">
                <span class="desc">
                    <p class="tag"><span><?php the_title(); ?></span></p>
                    <h2><?php the_content(); ?></h2>
                </span>
            </a>
        </div>

    <?php endif; ?>
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

                    </div>
                </div>
            </div>

            <div class="colorlib-blog">
                <div class="container-wrap">
                    <div class="row">

<?php
$paged = get_query_var('paged') ? get_query_var('paged') : 1;

$args = array(
   'posts_per_page' => 12,
   'order' => 'ASC',
   'paged' => $paged
);
$sport_posts = new WP_Query($args);
?>

<?php $count = 0; ?>
<?php if ( $sport_posts->have_posts() ) : while ( $sport_posts->have_posts() ) : $sport_posts->the_post(); ?>
    <?php $count += 1; ?>

    <div class="col-md-4 text-center">
        <div class="blog-entry-sports animate-box">
            <a href="<?php the_permalink(); ?>" class="blog-img" style="background-image: url( 
                <?php 
                    if ( has_post_thumbnail() ) {
                        $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
                        echo ''.$full_image_url[0].'';
                    }
                ?>
            );">
            </a>
            <div class="desc">
                <p class="tag"><span>Nature</span></p>
                <h2 class="head-article"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                <?php the_excerpt(); ?>
            </div>
        </div>
    </div>
    <?php if ($count % 3 == 0) {
        echo "</div>
<div class=\"row\">";
    } ?>
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>


                    </div>

                    <div class="row">
                        <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
        <!-- Output Of Pagination -->
        <?php if (function_exists("pagination")) {
            pagination($sport_posts->max_num_pages);
        } ?>

                        </div>
                    </div>

                </div>
            </div>            
        </div>
    </div>

<?php get_footer(); ?>