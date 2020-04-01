<?php get_header(); ?>


    <!-- Content from page About -->
    <div class="site-section">
      <div class="container">

<?php
$id = 9; // id страницы
$post = get_page($id);
$content = $post->post_content;
echo $post->post_content;
?>

      </div>
    </div><!-- Content from page About -->



<!-- Services -->
<?php 
  $id = 4;
  $services = new WP_Query(array('cat' => $id, 'order' => 'DESC'));
  $count = 0;
?>

<?php if ( $services->have_posts() ) : ?>

      <div class="site-section">
        <div class="container">
          <div class="row  mb-5">
            <div class="col-md-7">
              <h2 class="heading-39291">Our Featured <br> Services</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto quos veniam magni totam, architecto earum dolor id obcaecati!</p>
              <p class="my-5"><a href="<?php echo get_category_link(4); ?>" class="more-39291">Learn More</a></p>
            </div>
          </div>

          <div class="row">

  <?php while ( $services->have_posts() ) : $services->the_post(); ?>
    <?php
      $count += 1;
      if ($count % 2 == 0) {
        $attr = '100';
      } else {
        $attr = '';
      }

      $tags = get_the_tags();
      if ($tags) {
        $tag_str = '';
        foreach ($tags as $tag) {
          $tag_str .= $tag->name.', ';
        }
        $tag_str = rtrim($tag_str, ', ');
      }
    ?>
          <div class="col-md-6" data-aos="fade-up" data-aos-delay="<?php echo $attr; ?>">
            <div class="media-92812">
              <?php the_post_thumbnail( $size = 'post-thumbnail', array('class' => 'img-fluid') ) ?>
              <div class="text">
                <span class="caption"><?php echo $tag_str; ?></span>
                <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                <p class="my-5"><a href="<?php the_permalink(); ?>" class="more-39291">Learn More</a></p>
              </div>
            </div>
          </div>

<?php endwhile; ?>

        </div>
      </div>
    </div>

<?php else: ?>
<!-- no posts found -->
<?php endif; ?><!-- Services -->

       

    <!-- Projects -->
<?php
  $id = 9;
  $project = new WP_Query(array('cat' => $id, 'posts_per_page' => 1, 'order' => 'ASC'));

  $tags = get_the_tags();
  if ($tags) {
    $tag_str = '';
    foreach ($tags as $tag) {
      $tag_str .= $tag->name.', ';
    }
    $tag_str = rtrim($tag_str, ', ');
  }
?>
<?php if ( $project->have_posts() ) : ?>

    <div class="site-section">
      <div class="container">
        <div class="row mb-5 align-items-center">
          <div class="col-md-7">
            <h2 class="heading-39291">Latest <br>Project</h2>
          </div>
          <div class="col-md-5 text-right">
            <p><a href="#" class="more-39291">View All Projects</a></p>
          </div>
        </div>
      </div>  

  <?php while ( $project->have_posts() ) : $project->the_post(); ?>
      <div class="media-29191">
<?php
  $gallery = get_post_meta( $post->ID, 'images', true );
  if (!empty($gallery)) : $gallery = explode(',', $gallery); ?>
        <div class="owl-2 owl-carousel">
          <?php foreach ($gallery as $image) : ?>
            <?php echo wp_get_attachment_image($image, 'full', array('class' => 'img-fluid')) ?>
          <?php endforeach; ?>
        </div>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-7">
              <div class="text">
                <span class="caption mb-3 d-block"><?php echo $tag_str; ?></span>
                <h3 class="mb-3"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                <?php the_content(''); ?>
                <p class="my-5"><a href="<?php the_permalink(); ?>" class="more-39291">View This Project</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    <?php endif; ?>
<?php endwhile; ?>
    </div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?><!-- Projects -->



<!-- Quotes -->
<?php include 'tempate-parts/quotes.php' ?>
<!-- Quotes -->

    

    <div class="site-section">
      <div class="container">
        <div class="row  mb-5">
          <div class="col-md-7">
            <h2 class="heading-39291">Blog and Updates</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto quos veniam magni totam, architecto earum dolor id obcaecati!</p>
            
          </div>
        </div>
        
        <div class="row align-items-stretch">

<?php
  $blog = new WP_Query(array('posts_per_page' => 4));
?>
<?php if ( $blog->have_posts() ) : while ( $blog->have_posts() ) : $blog->the_post(); ?>

          <div class="col-lg-3 col-md-6 mb-5">
            <div class="post-entry-1 h-100">
              <a href="<?php the_permalink(); ?>">
                <?php the_post_thumbnail( $size = 'post-thumbnail', array('class' => 'img-fluid') ) ?>
              </a>
              <div class="post-entry-1-contents">
                <span class="meta"><?php the_time("d-m-Y"); ?></span>
                <h2><a href="#"><?php the_title(); ?></a></h2>
                <p class="my-3"><a href="<?php the_permalink(); ?>" class="more-39291">Continue Reading</a></p>
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
    
<?php get_footer(); ?>