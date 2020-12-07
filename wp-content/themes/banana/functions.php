<?php

#remove_filter( 'the_content', 'wpautop' );
#remove_filter( 'the_excerpt', 'wpautop' );

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
#add_filter('acf/load_field/name=elegir_tipo', 'acf_load_saved_tipo_taller');

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
#add_filter('acf/load_field/name=elegir_tipo_impresion', 'acf_load_saved_tipo_imprsion');

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
#add_filter('acf/load_field/name=acabados', 'acf_load_saved_acabado');

/* $postId = $_GET['post'];
$test = get_field('anadir_material' , $postId);
// $rows = have_rows('anadir_material' , $postId);
var_dump($test); */

function fn_calc_function(){
	$rows = get_field('anadir_material' , $_POST['post_ID']);
	
	$row = $rows[$_POST['id_row']];

	if($row['elegir_area'] == 'Taller'){

		$request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
		if( ! empty( $request ) ) {
			$body = wp_remote_retrieve_body($request);
			$data = json_decode($body, true);
			$impresion = $data["taller"]["precios"][(Int)$row['elegir_tipo']]['impresion'];
			$troquel = $data["taller"]["precios"][(Int)$row['elegir_tipo']]['troquel'];
		}

		$arrayName = array('body' => 
			array('medidas' => $_POST['dimension'], 
			'cantidad' => (Int)$_POST['quantity'],
			'tipos' => (Int)$row['elegir_tipo'],
			'dificultad' => 1,
			'impresion' => $impresion,
			'troquel' => $troquel)
		);
		#var_dump($arrayName);
		$url = 'https://calculadora.imprimebanana.com/api/taller/calcular';
		$extras = wp_remote_post( $url , $arrayName  );
		$body = wp_remote_retrieve_body($extras); #var_dump($body);
		$dataExtras = json_decode($body, true);
	}
	if($row['elegir_area'] == 'Impresión'){
		$arrayName = array('body' => 
		array('medidas' => $_POST['dimension'],
		'cantidad' => $_POST['quantity'],
		'productos' => $row['elegir_material_impresion'],
		'tipos' => $row['elegir_tipo_impresion']) );
		$url = 'https://calculadora.imprimebanana.com/api/impresion/calcular';
		$extras = wp_remote_post( $url , $arrayName  );
		$body = wp_remote_retrieve_body($extras); #var_dump($body);
		$dataExtras = json_decode($body, true);
	}
	// var_dump($dataExtras);
	$cost = $dataExtras['total_formato'];

	echo $cost;

	wp_die();
}
add_action('wp_ajax_nopriv_calc_function', 'fn_calc_function');
add_action('wp_ajax_calc_function', 'fn_calc_function');

///////////////////////////// ANDREY //////////////////////////////////


add_action('admin_enqueue_scripts', 'asv_insertar_js');

function asv_insertar_js(){

    wp_enqueue_media();
    wp_register_script('asv_script', get_stylesheet_directory_uri(). '/script.js', array('jquery'), '1', true );
	wp_enqueue_script('asv_script');
}

function fn_obtener_tipos_taller() {

    $request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
    if( ! empty( $request ) ) {
        $body = wp_remote_retrieve_body($request);
        $data = json_decode($body, true);
        $datos = $data["taller"]["tipos"][ $_POST['id_producto'] ];
    }

	$retornar = '<option value="">- Select -</option>';

	$rows = get_field('anadir_material' , $_POST['post_ID']);
    $desgloseId = explode('row-', $_POST['idSelect']);

    $idGuardado = '';

    if( isset($desgloseId[1]) ){
        $nRow = $desgloseId[1][0];
        $idGuardado = $rows[$nRow]['elegir_tipo'];
    }

    foreach ($datos as $key => $value) {
		$activo = '';
		if ($idGuardado == $key){
			$activo = 'selected';
		}
        $retornar .= '<option '.$activo.' value="'.$key.'">'.$value.'</option>';
	}    

    echo $retornar;

    wp_die();
}
add_action('wp_ajax_obtener_tipos_taller', 'fn_obtener_tipos_taller');

function fn_obtener_extras_taller() {

    $rows = get_field('anadir_material' , $_POST['post_ID']);
    $id_producto = $_POST['id_producto'];

    $idsGuardado = [];

    if($_POST['precargado'] == 'true'){
        $desgloseId = explode('row-', $_POST['idCampo']);
        $nRow = $desgloseId[1][0];
        $id_producto = $rows[$nRow]['elegir_tipo'];
        $idsGuardado =  $rows[$nRow]['extras'];
    }


	$arrayName = array('body' => array('tipos' => $id_producto, 'troquel' => 1, 'impresion' => 0) );
	$url = 'https://calculadora.imprimebanana.com/api/taller/extras';
	$extras = wp_remote_post( $url , $arrayName  );
	$body = wp_remote_retrieve_body($extras);
	$dataExtras = json_decode($body, true);

	$retornar = '';

    foreach ($dataExtras as $key => $value) {
        if($key == 'error' OR $key == 'tipo' ){
            if($value == 'error'){
                $value = $dataExtras['mensaje'];
            }
            $retornar = '<p>'.$value.'</p>';
            break;
        }
        $activo = '';
        if (in_array($key, $idsGuardado)){
            $activo = 'checked';
        }
		$retornar .= '<li><label><input '.$activo.' type="checkbox" name="'.$_POST['idCampo'].'[]" value="'.$key.'" >'.$value.'</label></li>';
	}    

    echo $retornar;
    wp_die();
}
add_action('wp_ajax_obtener_extras_taller', 'fn_obtener_extras_taller');

function fn_obtener_tipos_impresion() {

    $request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
    if( ! empty( $request ) ) {
        $body = wp_remote_retrieve_body($request);
        $data = json_decode($body, true);
        $datos = $data["impresion"]["tipos"][ $_POST['id_producto'] ];
    }

    $retornar = '<option value="">- Select -</option>';

    $rows = get_field('anadir_material' , $_POST['post_ID']);
    $desgloseId = explode('row-', $_POST['idSelect']);

    $idGuardado = '';

    if( isset($desgloseId[1]) ){
        $nRow = $desgloseId[1][0];
        $idGuardado = $rows[$nRow]['elegir_tipo_impresion'];
    }

    foreach ($datos as $key => $value) {
        $activo = '';
        if ($idGuardado == $key){
            $activo = 'selected';
        }
        $retornar .= '<option '.$activo.' value="'.$key.'">'.$value['nombre'].'</option>';
    }    

    echo $retornar;

    wp_die();
}
add_action( 'wp_ajax_obtener_tipos_impresion', 'fn_obtener_tipos_impresion' );

function fn_obtener_acabados_impresion() {

    $rows = get_field('anadir_material' , $_POST['post_ID']);
    $id_producto = $_POST['id_producto'];

    $idsGuardado = [];

    if($_POST['precargado'] == 'true'){
        $desgloseId = explode('row-', $_POST['idCampo']);
        $nRow = $desgloseId[1][0];
        $id_producto = $rows[$nRow]['elegir_tipo_impresion'];
        $idsGuardado =  $rows[$nRow]['acabados'];
    }


    $arrayName = array('body' => array('productos' => $id_producto) );
    $url = 'https://calculadora.imprimebanana.com/api/impresion/acabados';
    $extras = wp_remote_post( $url , $arrayName  );
    $body = wp_remote_retrieve_body($extras);
    $dataExtras = json_decode($body, true);

    $retornar = '';

    foreach ($dataExtras as $key => $value) {

        if($key == 'error' OR $key == 'tipo' ){
            if($value == 'error'){
                $value = $dataExtras['mensaje'];
            }
            $retornar = '<p>'.$value.'</p>';
            break;
        }
        $activo = '';
        if (in_array($key, $idsGuardado)){
            $activo = 'checked';
        }
        $retornar .= '<li><label><input '.$activo.' type="checkbox" name="'.$_POST['idCampo'].'[]" value="'.$key.'" >'.$value.'</label></li>';
    }    

    echo $retornar;
    wp_die();
}
add_action('wp_ajax_obtener_acabados_impresion', 'fn_obtener_acabados_impresion');
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
	register_taxonomy( 'dimension', array( 'post' ), $args );

}
add_action( 'init', 'custom_taxonomy_dimension', 0 );


$contacto_page['servicio'] = __("Diseño & Impresión Digital", "bananaTs");
###############
$acerca_page['bananeidad'] = __("Bananeidad", "bananaTs");
$acerca_page['productos'] = __("Nuestros productos y servicios", "bananaTs");
$acerca_page['escenario'] = __("Escenario", "bananaTs");
$acerca_page['hobbies'] = __("Hobbies", "bananaTs");
$acerca_page['tecnologia'] = __("Tecnología", "bananaTs");
###############
$servicios_page['impresiones'] = __("Impresiones", "bananaTs");
$servicios_page['disenos'] = __("Diseños", "bananaTs");
$servicios_page['socials'] = __("Manejo de Redes Sociales", "bananaTs");
###############
$cart_page['producto'] = __("PRODUCTO", "bananaTs");
$cart_page['archivo'] = __("ADJUNTAR<br>DISEÑO", "bananaTs");
$cart_page['cantidad'] = __("CANTIDAD", "bananaTs");
$cart_page['costo'] = __("COSTO<br>ESTIMADO", "bananaTs");
$cart_page['material'] = __("Material: ", "bananaTs");
$cart_page['dimension'] = __("Dimension: ", "bananaTs");
$cart_page['elegir'] = __("Choose file", "bananaTs");
$cart_page['check'] = __("Custom checkbox", "bananaTs");
###############
$cart_form['nombre'] = __("Nombre", "bananaTs");
$cart_form['correo'] = __("Correo Electrónico", "bananaTs");
$cart_form['tel'] = __("Teléfono", "bananaTs");
$cart_form['mensaje'] = __("Mensaje", "bananaTs");
$cart_form['enviar'] = __("ENVIAR", "bananaTs");

