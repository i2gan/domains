<?php get_header(); ?>

<div class="work-single-flex js-fullheight">
    <div class="col-half js-full-height work-img" style="background-image: url(
<?php 
    if ( has_post_thumbnail() ) {
        $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
        echo ''.$full_image_url[0].'';
    }
?>
    );"></div>
    <div class="col-half js-fullheight">
        <div class="display-t js-fullheight">
            <div class="display-tc js-fullheight">
                <div class="work-desc">
                    <h2><?php the_title(); ?></h2>
                    
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <?php the_content(); ?>
<?php endwhile; endif;?>
                    
                    <p><a href="#" class="btn-preview">Live Preview</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

</div>

<?php include('link_js.php'); ?>