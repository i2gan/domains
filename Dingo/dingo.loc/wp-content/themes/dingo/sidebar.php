<div class="col-lg-4">
    <div class="blog_right_sidebar">
        <aside class="single_sidebar_widget search_widget">
            <form action="#">
                <div class="form-group">
                    <div class="input-group mb-3">
                        <input name="s" type="text" class="form-control" placeholder='Search Keyword'
                            onfocus="this.placeholder = ''"
                            onblur="this.placeholder = 'Search Keyword'">
                        <div class="input-group-append">
                            <button class="btn" type="button"><i class="ti-search"></i></button>
                        </div>
                    </div>
                </div>
                <button class="button rounded-0 primary-bg text-white w-100 btn_4"
                    type="submit">Search</button>
            </form>
        </aside>

<?php $categories = get_categories(array('parent'=>0, 'orderby' => 'count', 'order' => 'DESC', 'number' => 6)); ?>
<?php if ( $categories ) : ?>

        <aside class="single_sidebar_widget post_category_widget">
            <h4 class="widget_title">Category</h4>
            <ul class="list cat-list">
    <?php foreach ($categories as $cat) : ?>
                <li>
                    <a href="#" class="d-flex">
                        <p><?php echo $cat->name.'&nbsp;'; ?></p>
                        <p><?php echo '('.$cat->count.')'; ?></p>
                    </a>
                </li>
    <?php endforeach; ?>

            </ul>
        </aside>

<?php endif; ?>


<?php $posts = new WP_Query(array('cat' => '5,8', 'posts_per_page' => 4)) ?>
<?php if ( $posts->have_posts() ) : ?>

        <aside class="single_sidebar_widget popular_post_widget">
            <h3 class="widget_title">Recent Post</h3>

    <? while ( $posts->have_posts() ) : $posts->the_post(); ?>

            <div class="media post_item">
                <!-- <img src="img/post/post_1.png" alt="post"> -->
                <?php the_post_thumbnail(array(80, 80)); ?>
                <div class="media-body">
                    <a href="<?php the_permalink(); ?>">
                        <h3><?php the_title(); ?></h3>
                    </a>
                    <p><?php the_time('F d, Y'); ?></p>
                </div>
            </div>

<?php endwhile; ?>

        </aside>


<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

<?php $tags = wp_tag_cloud('format=array&link=view&smallest=10&largest=10'); ?>
<!-- <pre>
<?php print_r($tags) ?></pre> -->
<?php if ($tags) : ?>
        <aside class="single_sidebar_widget tag_cloud_widget">
            <h4 class="widget_title">Tag Clouds</h4>
            <ul class="list">
    <?php foreach ($tags as $tag) : ?>
                <li>
                    <?php echo $tag; ?>
                </li>
    <?php endforeach; ?>
            </ul>
        </aside>
<?php endif; ?>

<!--             <h4 class="widget_title">Tag Clouds</h4>
            <ul class="list">
                <li>
                    <a href="#">project</a>
                </li>
                <li>
                    <a href="#">love</a>
                </li>
                <li>
                    <a href="#">technology</a>
                </li>
                <li>
                    <a href="#">travel</a>
                </li>
                <li>
                    <a href="#">restaurant</a>
                </li>
                <li>
                    <a href="#">life style</a>
                </li>
                <li>
                    <a href="#">design</a>
                </li>
                <li>
                    <a href="#">illustration</a>
                </li> -->



        <aside class="single_sidebar_widget instagram_feeds">
            <h4 class="widget_title">Instagram Feeds</h4>
            <?php echo do_shortcode( '[instagram-feed num=6 cols=3 showbutton=false showheader=false showfollow=false]' ) ?>
            <!-- <ul class="instagram_row flex-wrap">
                <li>
                    <a href="#">
                        <img class="img-fluid" src="img/post/post_5.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-fluid" src="img/post/post_6.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-fluid" src="img/post/post_7.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-fluid" src="img/post/post_8.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-fluid" src="img/post/post_9.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img class="img-fluid" src="img/post/post_10.png" alt="">
                    </a>
                </li>
            </ul> -->
        </aside>


        <aside class="single_sidebar_widget newsletter_widget">
            <h4 class="widget_title">Newsletter</h4>

            <form action="#">
                <div class="form-group">
                    <input type="email" class="form-control" onfocus="this.placeholder = ''"
                        onblur="this.placeholder = 'Enter email'" placeholder='Enter email' required>
                </div>
                <button class="button rounded-0 primary-bg text-white w-100 btn_4"
                    type="submit">Subscribe</button>
            </form>
        </aside>
    </div>
</div>