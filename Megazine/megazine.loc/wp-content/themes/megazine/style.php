<?php
/*
Template Name: Stype Page
*/
?>
<?php get_header(); ?>
        <div id="colorlib-main">

<?php include('slider_2.php'); ?>

            <div class="colorlib-blog">
                <div class="container-wrap">
                    <div class="row row-bottom-padded-md">

<?php 
$paged = get_query_var('paged') ? get_query_var('paged') : 1;
$args = array(
   'posts_per_page' => 13,
   'order' => 'ASC',
   'paged' => $paged
);
$style = new WP_Query($args);
?>

<?php $count = 0; ?>

<?php if ( $style->have_posts() ) : while ( $style->have_posts() ) : $style->the_post(); ?>

    <?php $count += 1; ?>

    <?php 

    switch ($count) {

        /********************** New row blocks **************************/

        case 4: 
        case 9: ?>
</div>
<div class="row row-bottom-padded-md">
    <div class="col-md-4">
        <div class="blog-entry-style animate-box">
            <div class="blog-img">
                <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'full', array('class' => 'img-responsive')); ?>
                    <img src="images/blog-1.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
            </div>
            <div class="desc">
                <p class="meta">
                    <span class="cat"><a href="#"><?php get_the_category()[0]->name; ?></a></span>
                    <span class="date">25 May 2018</span>
                    <span class="pos">By <a href="#"><?php the_author(); ?></a></span>
                </p>
                <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                <?php the_excerpt(); ?>
            </div>
        </div>
    </div>
           <?php break;

           /********************** Vimeo blocks **************************/
        
        case 7: ?>
    <div class="col-md-8">
        <div class="blog-entry-style animate-box">
            <div class="blog-img">
                <iframe src="https://player.vimeo.com/video/259411563" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                <p></p>
            </div>
            <div class="desc">
                <p class="meta">
                    <span class="cat"><a href="#"><?php get_the_category()[0]->name; ?></a></span>
                    <span class="date">25 May 2018</span>
                    <span class="pos">By <a href="https://vimeo.com/thenorthface">The North Face</a></span>
                </p>
                <h2><a href="https://vimeo.com/259411563">A Love Letter to Winter</a></h2>
                <?php the_excerpt(); ?>
            </div>
        </div>
    </div>
           <?php break;
        

        /********************** Big blocks **************************/
        
        case 12: ?>
<div class="row row-bottom-padded-md">
    <div class="col-md-8">
        <div class="blog-entry-style animate-box">
            <div class="blog-img">
                <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'full', array('class' => 'img-responsive')); ?>
                    <img src="images/blog-1.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
            </div>
            <div class="desc">
                <p class="meta">
                    <span class="cat"><a href="#"><?php get_the_category()[0]->name; ?></a></span>
                    <span class="date">25 May 2018</span>
                    <span class="pos">By <a href="#"><?php the_author(); ?></a></span>
                </p>
                <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                <?php the_excerpt(); ?>
            </div>
        </div>
    </div>
           <?php break;

        
        /********************** Default blocks **************************/

        default: ?>
    <div class="col-md-4">
        <div class="blog-entry-style animate-box">
            <div class="blog-img">
                <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'full', array('class' => 'img-responsive')); ?>
                    <img src="images/blog-1.jpg" class="img-responsive" alt="html5 bootstrap template"></a>
            </div>
            <div class="desc">
                <p class="meta">
                    <span class="cat"><a href="#"><?php get_the_category()[0]->name; ?></a></span>
                    <span class="date">25 May 2018</span>
                    <span class="pos">By <a href="#"><?php the_author(); ?></a></span>
                </p>
                <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                <?php the_excerpt(); ?>
            </div>
        </div>
    </div>
           <?php break;
    }

    ?>


<!-- post -->
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

                    </div>
                </div>

<div class="row">
    <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
        <?php 
            if (function_exists("pagination")) {
                pagination($style->max_num_pages);
            } 
        ?>
    </div>
</div>

            </div>          
        </div>
    </div>

<?php get_footer(); ?>