<?php

// Menu
register_nav_menu( 'menu_location', 'Primary_menu_func' );

// support thumbnail
add_theme_support( 'post-thumbnails' );

// Custom post type for Slider
add_action( 'init', 'slider_index' );
function slider_index() {
    register_post_type('slider', array(
        'public' => true,
        'supports' => array('title', 'editor', 'thumbnail'),
        'menu_position' => 100,
        'labels' => array(
            'name' => 'Slides',
            'all_items' => 'All slides',
            'add_new' => 'New slide',
            'add_new_item' => 'Add slide'
        )
    ));
}

// Custom post type for Fashion Slider
add_action('init', 'fashion_carousel');
function fashion_carousel() {
    register_post_type( 'carousel_item', array(
        'public' => true,
        'supports' => array('title', 'editor', 'thumbnail'),
        'menu_position' => 101,
        'labels' => array(
            'name' => 'Carousel Item',
            'all_items' => 'All Carousel Items',
            'add_new' => 'New Carousel Item',
            'add_new_item' => 'Add Carousel Item'
        )
    ));
}

// Custom post type for Featured Sports
add_action( 'init', 'featured_sports' );
function featured_sports() {
    register_post_type( 'sport_post', array(
        'public' => true,
        'supports' => array('title', 'editor', 'thumbnail'),
        'menu_position' => 102,
        'labels' => array(
            'name' => 'Sport Item',
            'all_items' => 'All Sport Items',
            'add_new' => 'New Sport Item',
            'add_new_item' => 'Add Carousel Item'
        )
    ));
}


// Numbered Pagination
function pagination($pages = '', $range = 4)
{  
    $showitems = ($range * 2)+1;  
    
    global $paged;
    if(empty($paged)) $paged = 1;
    
    if($pages == '')
    {
        global $wp_query;
        $pages = $wp_query->max_num_pages;
        if(!$pages)
        {
            $pages = 1;
        }
    }   
    
    if(1 != $pages)
    {
        echo "<div class=\"pagination\">";
        echo "<a href='".get_pagenum_link(1)."'>&laquo;</a>";
        
        for ($i=1; $i <= $pages; $i++)
        {
            if (1 != $pages &&( !($i >= $paged+$range+1 || $i <= $paged-$range-1) || $pages <= $showitems ))
            {
                echo ($paged == $i)? "<span class=\"current\">".$i."</span>":"<a href='".get_pagenum_link($i)."' class=\"inactive\">".$i."</a>";
            }
        }
        
        echo "<a href='".get_pagenum_link($pages)."'>&raquo;</a>";
        echo "</div>\n";
    }
}

// Sidebar Widget
register_sidebar(array(
    'name' => 'Sidebar',
    'id' => 'sidebar',
    'before_widget' => '<div class="side animate-box">',
    'after_widget' => '</div>',
    'before_title' => '<h2 class="sidebar-heading">',
    'after_title' => '</h2>'
    )
);

// Custom Post for Video Page
add_action( 'init', 'video_index' );
function video_index () {
    register_post_type( 'video_post', array (
        'public' => true,
        'supports' => array('title', 'editor', 'custom-fields'),
        'menu_position' => 103,
        'labels' => array(
            'name' => 'Video posts',
            'all_items' => 'All video posts',
            'add_new' => 'New video post',
            'add_new_item' => 'Add video post'
        )
    ));
}