<?php get_header(); ?>

    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                            <?php if ( $page_title = get_post_meta( $post->ID, 'page_title', true ) ) : ?>
                                <h2><?php echo $page_title; ?></h2>
                            <?php else: ?>
                                <h2>No page title</h2>
                            <?php endif; ?>
                            <!-- <h2>Food Menu</h2> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!--================Blog Area =================-->

<?php
    $query = new WP_Query( array ('cat' => '-6,-3,-8,-5', 'posts_per_page' => 5) );
?>
<?php if ( $query->have_posts() ) : ?>

    <section class="blog_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">    

    <?php while ( $query->have_posts() ) : $query->the_post(); ?>

                        <article class="blog_item">
                            <div class="blog_item_img">
                                <?php the_post_thumbnail(); ?>
                                <a href="<?php the_permalink(); ?>" class="blog_item_date">
                                    <h3><?php the_time('d'); ?></h3>
                                    <p><?php the_time('M'); ?></p>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="<?php the_permalink(); ?>">
                                    <h2>Head: <?php the_title(); ?></h2>
                                </a>
                                <?php the_content(); ?>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="far fa-user"></i> Travel, Lifestyle</a></li>
                                    <li><a href="#"><i class="far fa-comments"></i> 03 Comments</a></li>
                                </ul>
                            </div>
                        </article>

<?php endwhile; ?>
                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>


<?php get_sidebar(); ?>

                
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->

<?php get_footer(); ?>