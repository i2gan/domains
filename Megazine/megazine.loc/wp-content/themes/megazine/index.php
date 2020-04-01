<?php get_header(); ?>

        <div id="colorlib-main">
<?php include('slider.php'); ?>

            <div class="colorlib-blog">
                <div class="container-wrap">
                    <div class="row">

<?php
// Здесь используется get_query_var(), которая получает переменные запроса 
//(параметры запроса) из WP_Query
$paged = get_query_var('paged') ? get_query_var('paged') : 1;
 
// параметры запроса
$args = array(
   'posts_per_page' => 14,
   'order' => 'ASC',
   'paged' => $paged
);
 
$index_posts = new WP_Query( $args );
?>

<?php $count = 0; ?>

<?php while ( $index_posts->have_posts() ) : $index_posts->the_post(); ?>

<?php $count += 1; ?>

<!-- С помощью оператора switch определяем открывающие и закрывающие теги блока записи -->
<?php

    switch ($count) {
        case 1:
            $tags_open  = '<div class="col-md-6">';
            $tags_clode = '</div>';
            $img_class = 'blog-img';
            break;
        case 3:
            $tags_open  = '<div class="col-md-6">';
            $tags_clode = '</div>';
            $img_class = 'blog-img blog-img2';
            break;
        case 12:
            $tags_open  = '<div class="col-md-6">';
            $tags_clode = '</div>';
            $img_class = 'blog-img blog-img2';
            break;
        case 14:
            $tags_open  = '<div class="col-md-6">';
            $tags_clode = '</div>';
            $img_class = 'blog-img';
            break;
        case 2:
            $tags_open  = '<div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">';
            $tags_clode = '</div>';
            $img_class = 'blog-img blog-img2';
            break;
        case 4:
            $tags_open  = '<div class="col-md-12">';
            $tags_clode = '                                </div>
                            </div>
                        </div>';
            $img_class = 'blog-img blog-img2';
            break;
        case 5:
        case 6:
        case 7:
            $tags_open  = '<div class="col-md-4">';
            $tags_clode = '</div>';
            $img_class = 'blog-img';
            break;
        case 8:
            $tags_open  = '<div class="col-md-5">';
            $tags_clode = '</div>';
            $img_class = 'blog-img';
            break;
        case 9:
            $tags_open  = '<div class="col-md-7">
                            <div class="row">
                                <div class="col-md-12">';
            $tags_clode = '</div>';
            $img_class = 'blog-img blog-img2';
            break;
        case 10:
            $tags_open  = '<div class="col-md-12">';
            $tags_clode = '</div>
                            </div>
                        </div>';
            $img_class = 'blog-img blog-img2';
            break;
        case 11:
            $tags_open  = '<div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">';
            $tags_clode = '</div>';
            $img_class = 'blog-img blog-img2';
            break;


        case 13:
            $tags_open  = '<div class="col-md-12">';
            $tags_clode = '</div>
                            </div>
                        </div>';
            $img_class = 'blog-img blog-img2';
            break;
    }

?>

<?php echo $tags_open; ?>

<div class="blog-entry animate-box">
    <div class="<?php echo $img_class;?>" style="background-image: url( 
<?php
if ( has_post_thumbnail() ) {
    $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
    echo ''.$full_image_url[0].'';
}
?>
    );">
        <div class="desc text-center">
            <p class="tag"><span><?php echo get_the_category()[0]->name; ?></span></p>
            <h2 class="head-article"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
            <?php the_excerpt(); ?>
        </div>
    </div>
</div>

<?php echo $tags_clode; ?>

<?php endwhile; ?>



    </div>
</div>

<div class="row">
    <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
        <!-- Output Of Pagination -->
        <?php if (function_exists("pagination")) {
            pagination($index_posts->max_num_pages);
        } ?>
    </div>
</div>
            </div>          
        </div>
    </div>

<?php get_footer(); ?>