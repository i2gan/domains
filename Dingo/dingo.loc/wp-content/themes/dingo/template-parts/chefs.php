<!--::chefs_part start::-->

<?php $id = 5; ?>
<?php $chefs = new WP_Query(array('cat' => $id, 'posts_per_page' => 3, 'order' => 'ASC')) ?>

<?php if ( $chefs->have_posts() ) : ?>

<section class="chefs_part blog_item_section section_padding">
    <div class="container">
        <div class="row">
            <div class="col-xl-5">
                <div class="section_tittle">
                    <p>Team Member</p>
                    <h2>Our Experience Chefs</h2>
                </div>
            </div>
        </div>
        <div class="row">

    <?php while ( $chefs->have_posts() ) : $chefs->the_post(); ?>

            <div class="col-sm-6 col-lg-4">
                <div class="single_blog_item">
                    <div class="single_blog_img">
                        <?php the_post_thumbnail(); ?>
                    </div>
                    <div class="single_blog_text text-center">
                        <h3><?php the_title(); ?></h3>

                    <?php if ( $spec = get_post_meta( $post->ID, 'specialty', true ) ) : ?>
                        <p><?php echo $spec; ?></p>
                    <?php endif; ?>

                        <div class="social_icon">
                            <a href="#"> <i class="ti-facebook"></i> </a>
                            <a href="#"> <i class="ti-twitter-alt"></i> </a>
                            <a href="#"> <i class="ti-instagram"></i> </a>
                            <a href="#"> <i class="ti-skype"></i> </a>
                        </div>
                    </div>
                </div>
            </div>

<?php endwhile; ?>

        </div>
    </div>
</section>

<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

<!--::chefs_part end::-->