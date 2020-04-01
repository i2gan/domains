<?php
/*
Template Name: Video Page
*/
?>
<?php get_header(); ?>

        <div id="colorlib-main">
            <div class="colorlib-blog">
                <div class="container-wrap">
                    <div class="col-md-9">
                        <div class="content-wrap">
                            <div class="row">

<?php $video_posts = new WP_Query(array(
    'post_type' => 'video_post', 
    'order' => 'ASC', 
    'paged' => $paged,
    'posts_per_page' => 5
)); ?>
<?php if ( $video_posts->have_posts() ) : while ( $video_posts->have_posts() ) : $video_posts->the_post(); ?>
    <?php
        $link = get_post_meta( $post->ID, 'link' );
        $vimeo = get_post_meta( $post->ID, 'vimeo' )
    ?>
    <div class="col-md-12">
        <div class="blog-entry-style animate-box">
            <div class="blog-img">
                <?php if ( $link ) echo $link[0]; ?>
                <p></p>
            </div>
            <div class="desc">
                <p class="meta">
                    <span class="date"><?php echo date('d F Y'); ?></span>
                    <span class="pos">By <a href="#"><?php the_author(); ?></a></span>
                </p>
                <h2><a href="<?php if ( $vimeo ) echo $vimeo[0]; ?>"><?php the_title(); ?></a></h2>
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
                    </div>

<?php get_sidebar(); ?>

                    <div class="row">
                        <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">

<!-- Output Of Pagination -->
<?php if (function_exists("pagination")) {
    pagination($video_posts->max_num_pages);
} ?>

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
        </div>
    </div>

<?php get_footer(); ?>