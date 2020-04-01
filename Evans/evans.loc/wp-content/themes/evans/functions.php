<?php
/**
* scripts & styles
*/

function load_style_script () {

	wp_enqueue_style('open_iconic', get_template_directory_uri().'/css/open-iconic-bootstrap.min.css');
	wp_enqueue_style('animate', get_template_directory_uri().'/css/animate.css');
	wp_enqueue_style('owl_carousel', get_template_directory_uri().'/css/owl.carousel.min.css');
	wp_enqueue_style('owl_theme', get_template_directory_uri().'/css/owl.theme.default.min.css');
	wp_enqueue_style('magnific', get_template_directory_uri().'/css/magnific-popup.css');
	wp_enqueue_style('aos', get_template_directory_uri().'/css/aos.css');
	wp_enqueue_style('ionicons', get_template_directory_uri().'/css/ionicons.min.css');
	wp_enqueue_style('bootstrap', get_template_directory_uri().'/css/bootstrap-datepicker.css');
	wp_enqueue_style('jquery_timepicker', get_template_directory_uri().'/css/jquery.timepicker.css');
	wp_enqueue_style('flaticon', get_template_directory_uri().'/css/flaticon.css');
	wp_enqueue_style('icomoon', get_template_directory_uri().'/css/icomoon.css');
	wp_enqueue_style('style', get_template_directory_uri().'/css/style.css');
}

/**
* downloading scripts & styles
*/
add_action( 'wp_enqueue_scripts', 'load_style_script' );

/**
* menus
*/
register_nav_menus(array(
	'header_menu' => 'Menu in header',
	'footer_menu' => 'Menu in footer'
));

/**
* add thumbnail support
*/
add_theme_support( 'post-thumbnails' );

/**
* custom post type for the slider
*/
add_action('init', 'slider_index');
function slider_index () {
	register_post_type( 'slider_post', array(
		'public' => true,
		'supports' => array('title', 'editor', 'thumbnail'),
		'menu_position' => 100,
		'menu_icon' => admin_url() . 'images/media-button-video.gif',
		'labels' => array (
			'name' => 'Slides',
			'all_items' => 'All slides',
			'add_new' => 'New slide',
			'add_new_item' => 'Add slide'
		)
	) );
}

/**
* Excluding categories on main page
*/
add_action( 'pre_get_posts', 'exclude_category' );
function exclude_category( $query ) {
	if ( $query->is_front_page() && $query->is_main_query() ) {
		$query->set( 'cat', '-10,-11' );
	}
}