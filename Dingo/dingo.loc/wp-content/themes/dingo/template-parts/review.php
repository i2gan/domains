    <!--::review_part start::-->
<?php $id = 6; ?>
<?php $feedback = new WP_Query( array ( 'cat' => $id ) ) ?>

<?php if ( $feedback->have_posts() ) : ?>

    <section class="review_part gray_bg section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-5">
                    <div class="section_tittle">
                        <p>Testimonials</p>
                        <h2>Customers Feedback</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-11">
                    <div class="client_review_part owl-carousel">

    <?php while ( $feedback->have_posts() ) : $feedback->the_post(); ?>

                        <div class="client_review_single media">
                            <div class="client_img align-self-center">
                                <?php the_post_thumbnail(); ?>
                            </div>
                            <div class="client_review_text media-body">
                                <?php the_content(); ?>
                                <h4><?php the_title(); ?>, <span>Executive of fedex</span></h4>
                            </div>
                        </div>

<?php endwhile; ?>

                    </div>
                </div>
            </div>
        </div>
    </section>

<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

<!--::review_part end::-->