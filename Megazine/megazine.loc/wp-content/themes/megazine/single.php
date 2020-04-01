<?php get_header(); ?>

        <div id="colorlib-main">
            <div class="colorlib-blog">
                <div class="container-wrap">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="content-wrap">

<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    <article class="animate-box">
        <div class="blog-img" style="background-image: url( 
            <?php 
                if (has_post_thumbnail()) {
                    $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
                    echo ''.$full_image_url[0].'';
                }
            ?>
        );"></div>
        <div class="desc">
            <div class="meta">
                <p>
                    <span><?php echo get_the_category()[0]->name ?></span>
                    <span><?php date('d F Y'); ?></span>
                    <span><?php the_author(); ?> </span>
                    <span><a href="#">3 Comments</a></span>
                </p>
            </div>
            <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
            <?php the_content(); ?>
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