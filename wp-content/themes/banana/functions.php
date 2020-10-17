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

 function acf_load_material_taller_field_choices( $field ) {
	//retrieve materials for choices for select from API
	$request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
	if( ! empty( $request ) ) {
		$body = wp_remote_retrieve_body($request);
		$data = json_decode($body, true);
		$taller = $data["taller"]["productos"];
	}
    // reset choices
    $field['choices'] = array();
    // load choices with API array
    $choices = $taller;
    // loop through array and add to field 'choices'
    if( is_array($choices) ) {
        foreach ($choices as $key => $value) {
            $field['choices'][ $key ] = $value;
        }    
    }
    // return the field
    return $field;
}
add_filter('acf/load_field/name=elegir_meterial_taller', 'acf_load_material_taller_field_choices');

function acf_load_material_impresion_field_choices( $field ) {
	//retrieve materials for choices for select from API
	$request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
	if( ! empty( $request ) ) {
		$body = wp_remote_retrieve_body($request);
		$data = json_decode($body, true);
		$taller = $data["impresion"]["productos"];
	}
    // reset choices
    $field['choices'] = array();
    // load choices with API array
    $choices = $taller;
    // loop through array and add to field 'choices'
    if( is_array($choices) ) {
        foreach ($choices as $key => $value) {
			$field['choices'][ $key ] = $value;
		}    
    }
	// return the field
    return $field;
}
add_filter('acf/load_field/name=elegir_material_impresion', 'acf_load_material_impresion_field_choices'); 


///////////////////////////// ANDREY //////////////////////////////////


add_action('admin_enqueue_scripts', 'asv_insertar_js');

function asv_insertar_js(){

    //if (!is_home()) return;

    wp_enqueue_media();
    wp_register_script('asv_script', get_stylesheet_directory_uri(). '/script.js', array('jquery'), '1', true );
    wp_enqueue_script('asv_script');

    /*wp_localize_script( 'my_js', 'ajax_var', array(
        'url'    => admin_url( 'admin-ajax.php' ),
        'nonce'  => wp_create_nonce( 'my-ajax-nonce' ),
        'action' => 'event-list'
    ) );*/
}



function fn_obtener_tipos_taller() {
    // Check for nonce security

    /*
    $nonce = sanitize_text_field( $_POST['nonce'] );

    if ( ! wp_verify_nonce( $nonce, 'my-ajax-nonce' ) ) {
        die ( 'Busted!');
    }
    */

    $request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
    if( ! empty( $request ) ) {
        $body = wp_remote_retrieve_body($request);
        $data = json_decode($body, true);
        //var_dump($data);
        $datos = $data["taller"]["tipos"][ $_POST['id_producto'] ];
    }

    $retornar = '';

 
    foreach ($datos as $key => $value) {
        $retornar .= '<option value="'.$key.'">'.$value.'</option>';
    }    
    

    echo $retornar;

    wp_die();
}
#add_action( 'wp_ajax_nopriv_obtener_tipos_taller', 'fn_obtener_tipos_taller' );
add_action( 'wp_ajax_obtener_tipos_taller', 'fn_obtener_tipos_taller' );

///////////////////////////////////////////////////////////////////////////



function create_quantity_taxonomy() {
	$labels = array(
		'name'                           => 'Cantidades',
		'singular_name'                  => 'Cantidad',
		'add_new_item'                   => 'Añadir una cantidad',
		'new_item_name'                  => 'Nueva Cantidad',
		'menu_name'                      => 'Cantidades',
		'add_or_remove_items'            => 'Añadir o Borrar Cantidades'
	);
	register_taxonomy(
		'cantidad',
		'post',
		array(
			'label' => __( 'Cantidad' ),
			'hierarchical' => false,
			'labels' => $labels
		)
	);
}

add_action( 'init', 'create_quantity_taxonomy');

function create_dimensions_taxonomy() {
	$labels = array(
		'name'                           => 'Dimensiones',
		'singular_name'                  => 'Dimensión',
		'add_new_item'                   => 'Añadir una dimensión',
		'new_item_name'                  => 'Nueva dimensión',
		'menu_name'                      => 'Dimensiones',
		'add_or_remove_items'            => 'Añadir o Borrar Dimensiones'
	);
	register_taxonomy(
		'dimension',
		'post',
		array(
			'label' => __( 'Dimensión' ),
			'hierarchical' => false,
			'labels' => $labels
		)
	);
}

add_action( 'init', 'create_dimensions_taxonomy' );