<?php $food_menu = get_categories( array( 'parent' => 4, 'orderby' => 'ID' ) ); ?>

<?php if ( $food_menu ) : ?>

<section class="food_menu gray_bg">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-5">
                <div class="section_tittle">
                    <p>Popular Menu</p>
                    <h2>Delicious Food Menu</h2>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="nav nav-tabs food_menu_nav" id="myTab" role="tablist">   

<?php $food_item_count = 0; ?>

<?php foreach ( $food_menu as $food_item ):  ?>

    <?php $food_item_count += 1; ?>

    <?php if ($food_item_count == 1 ) : ?>
        <a class="active" id="<?php echo $food_item->cat_name; ?>-tab" data-toggle="tab" href="#<?php echo $food_item->cat_name; ?>" role="tab" aria-controls="<?php echo $food_item->cat_name; ?>"
                        aria-selected="false"><?php echo $food_item->cat_name; ?> <img src="<?php bloginfo('template_url'); ?>/img/icon/play.svg" alt="play"></a>
    <?php else: ?>
    <a id="<?php echo $food_item->cat_name; ?>-tab" data-toggle="tab" href="#<?php echo $food_item->cat_name; ?>" role="tab" aria-controls="<?php echo $food_item->cat_name; ?>"
                        aria-selected="false"><?php echo $food_item->cat_name; ?> <img src="<?php bloginfo('template_url'); ?>/img/icon/play.svg" alt="play"></a>
    <?php endif; ?>

<?php endforeach; ?>

                </div>
            </div>
            <div class="col-lg-12">
                <div class="tab-content" id="myTabContent">
<?php foreach ( $food_menu as $food_item ):  ?>

    <?php $food_menu_posts = get_posts( array( 'category' => $food_item->cat_ID, 'numberposts' => 6 ) ); ?>
    <?php $food_item_post_count = 0; ?>
    <?php foreach ( $food_menu_posts as $food_menu_post ) : ?>
        
        <?php $food_item_post_count += 1; ?>

        <?php if ( $food_item_post_count == 1 ): ?>

<div class="tab-pane fade single-member" id="<?php echo $food_item->cat_name; ?>" role="tabpanel" aria-labelledby="<?php echo $food_item->cat_name; ?>-tab">
    <div class="row">
        <div class="col-sm-6 col-lg-6">
            <div class="single_food_item media">
                <!-- <?php the_post_thumbnail( array('class' => 'mr-3') ) ?> -->
                <?php echo get_the_post_thumbnail( $food_menu_post->ID, array('class' => 'mr-3' ) ) ?>
                <div class="media-body align-self-center">
                    <h3><?php echo $food_menu_post->post_title; ?></h3>
                    <?php echo $food_menu_post->post_content; ?>
                    <?php if ( $price = get_post_meta( $food_menu_post->ID, 'price', true )) : ?>
                        <h5><?php echo '$'.$price; ?></h5>
                    <?php endif; ?>
                </div>
            </div>

        <?php elseif ( $food_item_post_count == 3 ) : ?>

            <div class="single_food_item media">
                <?php echo get_the_post_thumbnail( $food_menu_post->ID, array('class' => 'mr-3' ) ) ?>
                <div class="media-body align-self-center">
                    <h3><?php echo $food_menu_post->post_title; ?></h3>
                    <?php echo $food_menu_post->post_content; ?>
                    <?php if ( $price = get_post_meta( $food_menu_post->ID, 'price', true )) : ?>
                        <h5><?php echo '$'.$price; ?></h5>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-6">

        <?php elseif ( $food_item_post_count == 6 ) : ?>

            <div class="single_food_item media">
                <?php echo get_the_post_thumbnail( $food_menu_post->ID, array('class' => 'mr-3' ) ) ?>
                <div class="media-body align-self-center">
                    <h3><?php echo $food_menu_post->post_title; ?></h3>
                    <?php echo $food_menu_post->post_content; ?>
                    <?php if ( $price = get_post_meta( $food_menu_post->ID, 'price', true )) : ?>
                        <h5><?php echo '$'.$price; ?></h5>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>

        <?php else: ?>

        <div class="single_food_item media">
            <?php echo get_the_post_thumbnail( $food_menu_post->ID, array('class' => 'mr-3' ) ) ?>
            <div class="media-body align-self-center">
                <h3><?php echo $food_menu_post->post_title; ?></h3>
                <?php echo $food_menu_post->post_content; ?>
                <?php if ( $price = get_post_meta( $food_menu_post->ID, 'price', true )) : ?>
                    <h5><?php echo '$'.$price; ?></h5>
                <?php endif; ?>
            </div>
        </div>

        <?php endif; ?>

    <?php endforeach; ?>

<?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>