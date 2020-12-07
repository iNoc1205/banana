<?php

# Otros datos de configuración

	# ID página donde se verá detalle de reservas
	# y se ingresa datos de tarjeta y personal
	
	$id_page_checkout = 6125;
	$id_page_terms    = 6129;
	$id_page_reservat = 6131;
	$id_page_contacto = 153;

#################################


# Agregar opciones al menú

	function product_cart_menu()
	{
	    global $wpdb;
	    $contador = '';
	    add_menu_page( 'Pedidos', 'Pedidos' . $contador, 'manage_options', 'banana_cart', 'inicio', DW_URL.'/orders.png', 3);

	    add_submenu_page( 'banana_cart', 'Nuevos', 'Nuevos', 'manage_options', 'banana_cart_new', 'new_orders' );

        add_submenu_page( 'banana_cart', 'En Proceso', 'En Proceso', 'manage_options', 'banana_cart_process', 'orders_process' );

        add_submenu_page( 'banana_cart', 'Terminado', 'Terminado', 'manage_options', 'banana_cart_finished', 'orders_finished' );
	}
	add_action( 'admin_menu', 'product_cart_menu' );

#################################

# Carga Archivos solo para sección frontal

function cargarArchivos()
{
	global $__FILE__;

	wp_register_script( 'jquery-ui', plugins_url('jqueryui/jquery-ui.js',  $__FILE__), array( 'jquery' ), null, false  );
	wp_enqueue_script('jquery-ui');

	wp_register_style( 'jquery-ui-css', plugins_url('jqueryui/jquery-ui.css',  $__FILE__), null, false   );       
	wp_enqueue_style('jquery-ui-css'); 

	/* wp_register_style( 'animate_css', plugins_url('animate.min.css',  $__FILE__), null, false   );       
	wp_enqueue_style('animate_css'); 	

	wp_register_style('quetzal_css', plugins_url('quetzal.css', $__FILE__));
	wp_enqueue_style('quetzal_css'); */

	wp_register_script( 'cart_js', plugins_url('script.js', $__FILE__), array( 'jquery' ), null, true  );
	wp_enqueue_script('cart_js');

	wp_localize_script( 'cart_js', 'cart', array( 'ajax_url' => admin_url( 'admin-ajax.php' ) ) );
}

/* function proceso_ajax()
{
	global $alerts_form;
	echo '<div class="proceso_ajax">'.$alerts_form['proceso_ajax'].'</div>';
} */

if(!is_admin()){
	add_action( 'wp_enqueue_scripts', 'cargarArchivos' );
	// add_action( 'wp_footer', 'proceso_ajax', 1 );
}

#################################
