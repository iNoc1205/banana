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

$postId = $_GET['post'];
$test = get_field('anadir_material' , $postId);
// $rows = have_rows('anadir_material' , $postId);
var_dump($test);

function acf_load_saved_tipo_taller($field){
	remove_filter( current_filter(), __FUNCTION__ );

	$request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
    if( ! empty( $request ) ) {
        $body = wp_remote_retrieve_body($request);
        $data = json_decode($body, true);
        $datos = $data["taller"]["tipos"];
	}
	
	$postId = '';

	if(isset($_GET['post'])) {
		$postId = $_GET['post'];
	}
	
	$field['choices'] = array();
	
	$rows = get_field('anadir_material' , $postId);

	if( $rows ) {
		foreach( $rows as $row ) {
			if($row['elegir_tipo']){
				$material = $row['elegir_meterial_taller'];
				$tipo = $row['elegir_tipo'];
				$nombre = $datos[$material][$tipo];
				$field['choices'][ $tipo ] = $nombre;
			}
		}
	}

    return $field;
}
add_filter('acf/load_field/name=elegir_tipo', 'acf_load_saved_tipo_taller');

function acf_load_saved_tipo_imprsion($field){
	remove_filter( current_filter(), __FUNCTION__ );

	$request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
    if( ! empty( $request ) ) {
        $body = wp_remote_retrieve_body($request);
        $data = json_decode($body, true);
        $datos = $data["impresion"]["tipos"];
	}
	
	$postId = '';

	if(isset($_GET['post'])) {
		$postId = $_GET['post'];
	}
	
	$field['choices'] = array();
	
	$rows = get_field('anadir_material' , $postId);

	if( $rows ) {
		foreach( $rows as $row ) {
			if($row['elegir_tipo_impresion']){
				$material = $row['elegir_material_impresion'];
				$tipo = $row['elegir_tipo_impresion'];
				$nombre = $datos[$material][$tipo]['nombre'];
				$field['choices'][ $tipo ] = $nombre;
			}
		}
	}

    return $field;
}
add_filter('acf/load_field/name=elegir_tipo_impresion', 'acf_load_saved_tipo_imprsion');

function acf_load_saved_acabado($field){
	remove_filter( current_filter(), __FUNCTION__ );

	$postId = '';

	if(isset($_GET['post'])) {
		$postId = $_GET['post'];
	}
	
	$field['choices'] = array();
	
	$rows = get_field('anadir_material' , $postId);

	if( $rows ) {
		foreach( $rows as $row ) {
			if($row['acabados']){
				$material = $row['elegir_material_impresion'];

				$arrayName = array('body' => array('productos' => $material ) );
				$url = 'https://calculadora.imprimebanana.com/api/impresion/acabados';
				$acabados = wp_remote_post( $url , $arrayName  );
				$bodyAcabado = wp_remote_retrieve_body($acabados);
				$dataAcabado = json_decode($bodyAcabado, true);

				$acabado = $row['acabados'];
				$nombre = $dataAcabado[$acabado];
				$field['choices'][ $acabado ] = $nombre;
			}
		}
	}

    return $field;
}
add_filter('acf/load_field/name=acabados', 'acf_load_saved_acabado');

///////////////////////////// ANDREY //////////////////////////////////


add_action('admin_enqueue_scripts', 'asv_insertar_js');

function asv_insertar_js(){

    //if (!is_home()) return;

    wp_enqueue_media();
    wp_register_script('asv_script', get_stylesheet_directory_uri(). '/script.js', array('jquery'), '1', true );
	wp_enqueue_script('asv_script');
}

function fn_obtener_tipos_taller() {

    $request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
    if( ! empty( $request ) ) {
        $body = wp_remote_retrieve_body($request);
        $data = json_decode($body, true);
        //var_dump($data);
        $datos = $data["taller"]["tipos"][ $_POST['id_producto'] ];
    }

	$retornar = '';

	/* if(isset($_GET['post'])) {
		$postId = $_GET['post'];
	}
	$rows = get_field('anadir_material' , $postId);

	$desgloseId = explode('row-', $_POST['idSelect']);
	$nRow = $desgloseId[1][0];
	$idGuardado = $rows[$nRow]['elegir_tipo']; */

    foreach ($datos as $key => $value) {
		/* $activo = '';
		if ($idGuardado == $key){
			$activo = 'selected';
		} */
        $retornar .= '<option value="'.$key.'">'.$value.'</option>';
	}    

    echo $retornar;

    wp_die();
}
add_action('wp_ajax_obtener_tipos_taller', 'fn_obtener_tipos_taller');

function fn_obtener_extras_taller() {

	$arrayName = array('body' => array('tipos' => $_POST['id_producto'], 'troquel' => 1, 'impresion' => 0) );
	$url = 'https://calculadora.imprimebanana.com/api/taller/extras';
	$extras = wp_remote_post( $url , $arrayName  );
	$body = wp_remote_retrieve_body($extras);
	$dataExtras = json_decode($body, true);

	$desgloseId = explode('row-', $_POST['id_select']);
	$nRow = $desgloseId[1][0];

	$retornar = '';

    foreach ($dataExtras as $key => $value) {
		if( $value == 'error'|| $value == 'No existen extras para está configuración'){
			$retornar = '<p>No hay opciones disponibles</p>';
			break;
		}
		$retornar .= '<li><label><input type="checkbox" name="acf[field_5f891556cbe87][row-'.$nRow.'][field_5f8fa8bdd4c85][]" value="'.$key.'" >'.$value.'</label></li>';
	}    
	// var_dump($retornar);
    echo $retornar;
    wp_die();
}
add_action('wp_ajax_obtener_extras_taller', 'fn_obtener_extras_taller');

function fn_obtener_tipos_impresion() {

	//GET PRODUCTOS
    $request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
    if( ! empty( $request ) ) {
        $body = wp_remote_retrieve_body($request);
        $data = json_decode($body, true);
        //var_dump($data);
		$datos = $data["impresion"]["tipos"][ $_POST['id_iproducto'] ];
	}
	
	//POST ACABADOS
	$arrayName = array('body' => array('productos' => $_POST['id_iproducto']) );
	$url = 'https://calculadora.imprimebanana.com/api/impresion/acabados';
	$acabados = wp_remote_post( $url , $arrayName  );
	$bodyAcabado = wp_remote_retrieve_body($acabados);
	$dataAcabado = json_decode($bodyAcabado, true);

	$retornar = array();
	
	$tipo = '';
	$acabado='';

    foreach ($datos as $key => $value) {
        $tipo .= '<option value="'.$key.'">'.$value["nombre"].'</option>';
    }    
	
	foreach ($dataAcabado as $key => $value) {
        $acabado .= '<option value="'.$key.'">'.$value.'</option>';
	}
	
	$retornar [0] = $tipo;
	$retornar [1] = $acabado;
    echo json_encode($retornar);

    wp_die();
}
add_action( 'wp_ajax_obtener_tipos_impresion', 'fn_obtener_tipos_impresion' );

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

// Register Custom Taxonomy
function custom_taxonomy_dimension() {

	$labels = array(
		'name'                       => _x( 'Dimensiones', 'Taxonomy General Name', 'text_domain' ),
		'singular_name'              => _x( 'Dimensión', 'Taxonomy Singular Name', 'text_domain' ),
		'menu_name'                  => __( 'Dimensiones', 'text_domain' ),
		'all_items'                  => __( 'Todas las Dimensiones', 'text_domain' ),
		'parent_item'                => __( 'Parent Item', 'text_domain' ),
		'parent_item_colon'          => __( 'Parent Item:', 'text_domain' ),
		'new_item_name'              => __( 'New Item Name', 'text_domain' ),
		'add_new_item'               => __( 'Add New Item', 'text_domain' ),
		'edit_item'                  => __( 'Edit Item', 'text_domain' ),
		'update_item'                => __( 'Update Item', 'text_domain' ),
		'view_item'                  => __( 'View Item', 'text_domain' ),
		'separate_items_with_commas' => __( 'Separate items with commas', 'text_domain' ),
		'add_or_remove_items'        => __( 'Add or remove items', 'text_domain' ),
		'choose_from_most_used'      => __( 'Choose from the most used', 'text_domain' ),
		'popular_items'              => __( 'Popular Items', 'text_domain' ),
		'search_items'               => __( 'Search Items', 'text_domain' ),
		'not_found'                  => __( 'Not Found', 'text_domain' ),
		'no_terms'                   => __( 'No items', 'text_domain' ),
		'items_list'                 => __( 'Items list', 'text_domain' ),
		'items_list_navigation'      => __( 'Items list navigation', 'text_domain' ),
	);
	$args = array(
		'labels'                     => $labels,
		'hierarchical'               => false,
		'public'                     => true,
		'show_ui'                    => true,
		'show_admin_column'          => true,
		'show_in_nav_menus'          => true,
		'show_tagcloud'              => true,
	);
	register_taxonomy( 'taxonomy', array( 'post' ), $args );

}
add_action( 'init', 'custom_taxonomy_dimension', 0 );
