<?php

/**
* header menus
*/
register_nav_menu('menu_header_left', 'Primary Left Menu');
register_nav_menu('menu_header_right', 'Primary Right Menu');
register_nav_menu('menu_footer', 'Footer Menu');

/**
* thumbnails
*/
add_theme_support( 'post-thumbnails' );

/**
* header slider by custom post type
*/ 
add_action('init', 'header_slider');
function header_slider () {
	register_post_type( 'slider', array (
		'public' => true,
		'supports' => array('title', 'editor', 'thumbnail'),
		'menu_position' => 100,
		'labels' => array(
			'name' => 'Slider',
			'all_items' => 'All slides',
			'add_new' => 'New slide',
			'add_new_item' => 'Add slide'
		)
	) );
}

/**
* exclude posts from the loop
*/
add_action('pre_get_posts', 'exclude_category');
function exclude_category ( $query ) {
	if ( $query->is_front_page() && $query->is_main_query() ) {
		$query->set( 'cat', '-4,-9,-10,-11' );
	}
}