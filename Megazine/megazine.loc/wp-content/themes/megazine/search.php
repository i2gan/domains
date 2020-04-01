<?php get_header(); ?>

        <div id="colorlib-main">
            <div class="colorlib-blog">
                <div class="container-wrap">
                    <div class="row">

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<!-- post --><?php the_title(); ?>
<?php the_excerpt(); ?>
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

<?php
$paged = get_query_var('paged') ? get_query_var('paged') : 1;

$args = array(
   'posts_per_page' => 12,
   'order' => 'ASC',
   'paged' => $paged
);
$search_posts = new WP_Query($args);
?>

<?php $count = 0; ?>
<?php if ( $search_posts->have_posts() ) : while ( $search_posts->have_posts() ) : $search_posts->the_post(); ?>
    <?php $count += 1; ?>

    <div class="col-md-4 text-center">
        <div class="blog-entry-sports animate-box">
            
            <div class="desc">
                <p class="tag"><span>Nature</span></p>
                <h2 class="head-article"><a href="#"><?php the_title(); ?></a></h2>
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
            pagination($search_posts->max_num_pages);
        } ?>

                        </div>
                    </div>

                </div>
            </div>            
        </div>
    </div>

<?php get_footer(); ?>