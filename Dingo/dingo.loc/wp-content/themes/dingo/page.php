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

<?php
    if (is_page( 10 )) {
        include 'template-parts/food-menu-2.php';
        include 'template-parts/video.php';
    } elseif (is_page( 12 )) {
        include 'template-parts/chefs.php';
        include 'template-parts/video.php';
    } elseif (is_page( 8 )) {
        include 'template-parts/about-part.php';
        include 'template-parts/review.php';
        include 'template-parts/chefs.php';
    }
?>

<?php get_footer(); ?>