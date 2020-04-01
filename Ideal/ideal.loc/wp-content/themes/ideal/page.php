<?php include 'tempate-parts/page-header.php'; ?>

<!-- Content -->

<!-- Projects -->
<?php if (is_page( 5 )) : ?>
	<?php 
		$id = 9;
		$projects = new WP_Query(array('cat' => $id, 'order' => 'ASC', 'posts_per_page' => 4));
		$count = 0;
	?>
	<?php if ( $projects->have_posts() ) : ?>

<div class="site-section ">
      
		<?php while ( $projects->have_posts() ) : $projects->the_post(); ?>
  
  <div class="container site-section">
    <div class="row align-items-stretch feature-2">
			<?php $count += 1; ?>

			<div class="col-lg-9 feature-2-img <?php if ($count % 2 == 0) echo ' order-lg-2' ?>">
        <?php the_post_thumbnail( $size = 'post-thumbnail', array('class' => 'img-fluid') ) ?>
      </div>
      <div class="col-lg-3 feature-2-contents pl-lg-5">
        <div class="fixed-content">
          <span class="caption">Project 0<?php echo $count; ?>.</span>
          <h2 class="heading-39291"><?php the_title(); ?></h2>
          <?php the_content(); ?>
        </div>
      </div>
		</div>
  </div>

	<?php endwhile; ?>
</div>
    
	<?php else: ?>
	<!-- no posts found -->
	<?php endif; ?>
<?php endif; ?><!----------------------------------------- Projects -->




<!------------------------------------------------ Services -->
<?php if (is_page( 7 )) : ?>

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
<?php endif; ?>


	<!-- Quotes -->
		<?php include 'tempate-parts/quotes.php' ?>
	<!-- Quotes -->
<?php endif; ?><!---------------------------- Services -->



<!--------------------------------- About -->
<?php if (is_page( 9 )) : ?>

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

    <!-- Our Team -->
<?php  
	$id = 11;
	$team = new WP_Query(array('cat' => $id, 'posts_per_page' => 6, 'order' => 'ASC'));
?>

<?php if ( $team->have_posts() ) : ?>

	<div class="site-section">
	  <div class="container">
	    <div class="row justify-content-center text-center mb-5 section-2-title">
	      <div class="col-md-6">
	        <h2 class="heading-39291">Meet Our Team</h2>
	        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis provident eius ratione velit, voluptas laborum nemo quas ad necessitatibus placeat?</p>
	      </div>
	    </div>
	    <div class="row align-items-stretch">

	<?php while ( $team->have_posts() ) : $team->the_post(); ?>

          <div class="col-lg-4 col-md-6 mb-5">
            <div class="post-entry-1 h-100">
              <a href="<?php the_permalink(); ?>">
                <?php the_post_thumbnail( $size = 'post-thumbnail', array('class' => 'mg-fluid') ) ?>
              </a>
              <div class="post-entry-1-contents">
      <?php	if ($spec = get_post_meta( $post->ID, 'specialty', true )) : ?>
                <span class="meta"><?php echo $spec; ?></span>
      <?php endif; ?>
                <h2><?php the_title(); ?></h2>
                <?php the_content(); ?>
              </div>
            </div>
          </div>

<?php endwhile; ?>
      </div>
    </div>
  </div>
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>
    <!-- Our Team -->

<?php endif; ?><!-------------------------------- About -->




<!-- Blog -->
<?php if (is_page( 11 )) : ?>

	<?php
		$blog = new WP_Query(array('posts_per_page' => 8, 'cat' => '-4,-9,-10,-11'));
	?>

	<?php if ( $blog->have_posts() ) : ?>
		<div class="site-section">
      <div class="container">
        <div class="row align-items-stretch">
		<?php while ( $blog->have_posts() ) : $blog->the_post(); ?>
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
				</div>
			</div>
		</div>
	<?php else: ?>
	<!-- no posts found -->
	<?php endif; ?>

<?php endif; ?>
<!-- Blog -->


<?php get_footer(); ?>