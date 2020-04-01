<?php
/**
* Styles
*/
function load_styles () {
    wp_enqueue_style( 'bootstrap', get_template_directory_uri().'/css/bootstrap.min.css' );
    wp_enqueue_style( 'animate', get_template_directory_uri().'/css/animate.css' );
    wp_enqueue_style( 'owl', get_template_directory_uri().'/css/owl.carousel.min.css' );
    wp_enqueue_style( 'themify', get_template_directory_uri().'/css/themify-icons.css' );
    wp_enqueue_style( 'flaticon', get_template_directory_uri().'/css/flaticon.css' );
    wp_enqueue_style( 'magnific', get_template_directory_uri().'/css/magnific-popup.css' );
    wp_enqueue_style( 'slick', get_template_directory_uri().'/css/slick.css' );
    wp_enqueue_style( 'gijgo', get_template_directory_uri().'/css/gijgo.min.css' );
    wp_enqueue_style( 'nice', get_template_directory_uri().'/css/nice-select.css' );
    wp_enqueue_style( 'all', get_template_directory_uri().'/css/all.css' );
    wp_enqueue_style( 'style', get_template_directory_uri().'/css/style.css' );
}
add_action( 'wp_enqueue_scripts', 'load_styles' );

/**
* Menus
*/
register_nav_menu( 'header_menu', 'Menu in Header' );

/**
* Adding styles to li-elements of menu
*/
add_filter('nav_menu_css_class', 'change_menu_item_css_classes', 10, 4);
function change_menu_item_css_classes($classes, $item, $args, $depth) {
    if ($args->theme_location === 'header_menu') {
        $classes[] = 'nav-item';
    }
    return $classes;
}

/**
* Thumbnail
*/
add_theme_support( 'post-thumbnails' );

/**
* список меток
**/
function my_list_tags () {
    $tags = get_the_tags();
    return $tags;
}