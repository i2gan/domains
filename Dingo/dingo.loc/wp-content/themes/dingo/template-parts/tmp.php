<?php query_posts("cat=4"); ?>
<?php 
    $current_cat = get_query_var('cat');
    echo $current_cat;
    global $ancestor;
    $childcats = get_categories('child_of='.$current_cat.'&hide_empty=0&orderby=id');
    foreach ($childcats as $childcat) {
        if (cat_is_ancestor_of($ancestor, $childcat->cat_ID) == false){
            echo '<h2><a href='.get_category_link($childcat->cat_ID).'>';
            echo $childcat->cat_name . '</a></h2>'; 
            $mycat=get_the_category(); $mycat=$mycat[0];  
            $postslist = get_posts('posts_per_page=-1&category='.$childcat->cat_ID);
?> 
<?php  foreach ($postslist as $post) : ?>
    <?php setup_postdata($post); ?>
    <div class="subpagesAtCategory">
        <a href="<?php echo the_permalink(); ?>"><?php the_title(); ?></a>
    </div>
<?php endforeach; ?> 
<?php $ancestor = $childcat->cat_ID; } } ?>