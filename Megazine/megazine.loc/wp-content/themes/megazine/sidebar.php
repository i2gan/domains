<div class="col-md-3 sticky-parent">
    <div class="sidebar" id="sticky_item">

        <div class="side animate-box">
            <div class="form-group">
                <form form role="search" method="get" id="searchform" action="http://megazine.loc/" >
                    <input name="s" type="text" class="form-control searchform" id="search" placeholder="Enter to search...">
                    <button type="submit" class="btn submit btn-primary"><i class="icon-search3"></i></button>
                </form>
            </div>
        </div>



<div class="side animate-box">
    <h2 class="sidebar-heading">Categories</h2>
    <p>
        <ul class="category">
        <?php 
            $cats = get_categories();
            foreach ($cats as $cat) {
                echo "<li><a href=\"#\"><i class=\"icon-check\"></i> ".$cat->name."</a></li>";
            }
        ?>
        </ul>
    </p>
</div>

        <div class="side animate-box">
            <h2 class="sidebar-heading">Recent Blog</h2>

<?php $query = new WP_Query(array('posts_per_page' => 3)); ?>
<?php if ( $query->have_posts() ) : while ( $query->have_posts() ) : $query->the_post(); ?>
    <div class="f-blog">
        <a href="blog.html" class="blog-img" style="background-image: url( 
            <?php
                if(has_post_thumbnail()) {
                    $full_image_url = wp_get_attachment_image_src(get_post_thumbnail_id(), 'full');
                    echo ''.$full_image_url[0].'';
                }
            ?>
        );">
        </a>
        <div class="desc">
            <h3><a href="blog.html"><?php the_title(); ?></a></h3>
            <p class="admin"><span><?php echo date('d F Y') ?></span></p>
        </div>
    </div>
<?php endwhile; ?>
<!-- post navigation -->
<?php else: ?>
<!-- no posts found -->
<?php endif; ?>

        </div>

        <?php if(!dynamic_sidebar( 'sidebar' )): ?>
            <h2 class="sidebar-heading">Sidebar's Widget</h2>
        <?php endif; ?>

        <div class="side animate-box">
            <div class="form-group">
                <input type="text" class="form-control form-email text-center" id="email" placeholder="Enter your email">
                <button type="submit" class="btn btn-primary btn-subscribe">Subscribe</button>
            </div>
        </div>

    </div>
</div>