<?php

/**
* Menu
*/
register_nav_menu( 'menu', 'Primary Menu' );

/**
* option
*/
function my_more_options () {
	// $id, $title, $callback, $page, $section = 'default', $args = array 
	add_settings_field(
		'phone',
		'Phone',
		'display_phone',
		'general'
	);
	// $option_group, $option_name, $args = array 
	register_setting(
		'general',
		'my_phone'
	);
}
function display_phone () {
	echo '<input name="my_phone" type="text" value="'. get_option( 'my_phone' ) .'" class="regular-text">';
}
add_action( 'admin_init', 'my_more_options' );

/**
* add thumbnails
*/
add_theme_support( 'post-thumbnails' );