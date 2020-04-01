<!-- Quotes -->
<?php
  $id = 10;
  $quote_posts = new WP_Query(array('cat' => $id, 'posts_per_page' => 3, 'order' => 'ASC'));
?>

<?php if ( $quote_posts->have_posts() ) : ?>

    <div class="site-section section-4">
      <div class="container">

        <div class="row justify-content-center text-center">
          <div class="col-md-7">
            <div class="slide-one-item owl-carousel">

  <?php while ( $quote_posts->have_posts() ) : $quote_posts->the_post(); ?>
    <?php
      $quote_author = get_post_meta( $post->ID, 'quote_author', true );
      $quote_spec = get_post_meta( $post->ID, $key = 'quote_spec', $single = true );
    ?>
              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <?php the_content(); ?>
                <cite><span class="text-black"><?php echo $quote_author; ?></span> &mdash; <span class="text-muted"><?php echo $quote_spec; ?></span></cite>
              </blockquote>

<?php endwhile; ?>

            </div>
          </div>
        </div>
      </div>
    </div>

<?php else: ?>
<!-- no posts found -->
<?php endif; ?><!-- Quotes -->