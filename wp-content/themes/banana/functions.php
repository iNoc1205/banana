<?php

//Load Styles
function load_css( ){
	wp_enqueue_style( 'bootstrap_css', 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' );
	wp_enqueue_style( 'style', get_stylesheet_uri() );
}
add_action('wp_enqueue_scripts', 'load_css');

//Load JavaScrips
function load_js( ){
	wp_enqueue_script( 'jquery', 'https://code.jquery.com/jquery-3.4.1.min.js');
	wp_enqueue_script( 'popper', 'https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js');
	wp_enqueue_script( 'bootstrap_js', 'https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js');
	wp_enqueue_script( 'ajax', 'https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js');
}
add_action('wp_enqueue_scripts', 'load_js');

//Theme Options
add_theme_support('menus');

//Menus
register_nav_menus( 
	array(
		'left-menu' => 'Left Menu Location',
		'social-menu' => 'Social Links Menu Location',
		'mobile-menu' => 'Mobile Menu Location',
	) 
);

function custom_post_type( ){
	$faq = array(
		'labels' => array(
			'name' => 'Preguntas',
			'singular_name' => 'Pregunta',
		),
		'hierarchical' => false,
		'public' => true,
		'has_archive' => true,
		'menu_icon' => 'dashicons-editor-help',
		'supports' => array('title', 'editor'),
	);	
	
	register_post_type('faq', $faq);
}
add_action('init', 'custom_post_type');