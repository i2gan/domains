<?php get_header(); ?>


<div id="colorlib-blog">
    <div class="container">
        <div class="row row-pb-md">


<?php $count = 0; ?>

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>

<?php 
    $count += 1;
?>

<div class="col-md-4">
    <div class="article animate-box">
        <a href="<?php the_permalink(); ?>" class="blog-img">
            <!-- <img class="img-responsive" src="images/img-1.jpg" alt="html5 bootstrap by colorlib.com"> -->
            <?php the_post_thumbnail('full', array('class' => 'img-responsive')); ?>
            <div class="overlay"></div>
            <div class="link">
                <span class="read">Read more</span>
            </div>
        </a>
        <div class="desc">
            <span class="meta">04, Mar 2018</span>
            <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
            <?php the_content(); ?>
        </div>
    </div>
</div>

<?php
    if ( $count % 3 == 0 ) {
        echo "</div><div class=\"row row-pb-md\">";
    }
?>

<?php endwhile; ?>

        </div>
    </div>
</div>

<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

        


<?php include('bato-footer.php'); ?>

</div>

<?php include('link_js.php'); ?>