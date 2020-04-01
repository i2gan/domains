<?php

// Thumbnails
add_theme_support( 'post-thumbnails' );

/* CUSTOM POST TYPE */
// hook for slider
add_action( 'init', 'slider_index' );
// function for new type
function slider_index() {
    register_post_type('slider', array(
        // можно ли публиковать запись
        'public' => true,
        // Чем можно заполнить запись: заголовок, редактор, миниатюру
        'supports' => array('title', 'editor', 'thumbnail'),
        // расположение в админке - (внизу)
        'menu_position' => 100,
        // Названия записи в админке
        'labels' => array(
            'name' => 'Slides',
            'add_items' => 'All slides',
            'add_new' => 'New slide',
            'add_new_item' => 'Add slide'
        )
    ));
}

/* CUSTOM POST TYPE */
// hook for slider
add_action( 'init', 'works_index' );
// function for new type
function works_index() {
    register_post_type('work', array(
        'public' => true,
        'supports' => array('title', 'editor', 'thumbnail'),
        'menu_position' => 100,
        'labels' => array(
            'name' => 'Works',
            'add_items' => 'All works',
            'add_new' => 'New work',
            'add_new_item' => 'Add work'
        )
    ));
}

/* Menu */
register_nav_menu( 'menu', 'Primary menu func' );