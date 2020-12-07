<?php

# Nombre de campos en formulario de reserva y mensajes

	$campos_form = array(); $campos_form_f = array(); $labels = array();

	# Campos formulario reserva Lodged
	$campos_form['llegada']        = __("Arrival date", "dw_quetzal");
	$campos_form['salida']         = __("Departure date", "dw_quetzal");
	$campos_form['adultos']        = __("Adults", "dw_quetzal");
	$campos_form['ninos']          = __("Child (0-12 years)", "dw_quetzal");
	$campos_form['infantes']       = __("Infants (0-2 years)", "dw_quetzal");
	$campos_form['tipo']           = __("Type", "dw_quetzal");
	$campos_form['cuarto']         = __("Bedroom", "dw_quetzal");
	$campos_form['ocupacion']      = __("Occupancy", "dw_quetzal");
	$campos_form['btn_continuar']  = __("Continue", "dw_quetzal");

	# Alertas de formularios
	$alerts_form['requerido']      = __("The <b>{field}</b> field is required.", "dw_quetzal");
	$alerts_form['excedido']       = __("Maximum people number exceeded", "dw_quetzal");
	$alerts_form['minimum']        = __("A minimum of <b>{field}</b> people is required", "dw_quetzal");
	$alerts_form['precio_no_disp'] = __("Rates not available due to the type of service or date selected", "dw_quetzal");
	$alerts_form['error_rango_fe'] = __("Error in the selected date range", "dw_quetzal");
	$alerts_form['eliminar_servi'] = __("Please confirm if you want to delete this record", "dw_quetzal");
	$alerts_form['proceso_ajax']   = __("Please a moment...", "dw_quetzal");

	# Títulos en formularios
	$labels['precio']              = __("Price", "dw_quetzal");
	$labels['total']               = __("Total", "dw_quetzal");
	$labels['personal_datos']      = __("Personal data", "dw_quetzal");
	$labels['tarjeta_datos']       = __("Credit card information", "dw_quetzal");
	$labels['si']                  = __("Yes", "dw_quetzal");
	$labels['no']                  = __("No", "dw_quetzal");
	$labels['total_pagar']         = __("Total to pay", "dw_quetzal");
	$labels['detalleReserva']      = __("Reserve detail", "dw_quetzal");

	$labels['Hlista_lodge']        = __("Lodges in the region of", "dw_quetzal");
	$labels['htour']               = __("Tours", "dw_quetzal");
	$labels['hlodge']              = __("Lodges", "dw_quetzal");
	$labels['items']               = __("item(s)", "dw_quetzal");

	# Campos formulario final
	$campos_form_f['nombre']       = __("Full name", "dw_quetzal");
	$campos_form_f['correo']       = __("Email address", "dw_quetzal");
	$campos_form_f['telefono']     = __("Phone", "dw_quetzal");
	$campos_form_f['tipo_tar']     = __("Card type", "dw_quetzal");
	$campos_form_f['nume_tar']     = __("Card number", "dw_quetzal");
	$campos_form_f['nomb_tar']     = __("Name on card", "dw_quetzal");
	$campos_form_f['expi_tar']     = __("Expiry date", "dw_quetzal");
	$campos_form_f['code_tar']     = __("Security code", "dw_quetzal");
	$campos_form_f['terms']        = __("I Agree", "dw_quetzal");

	# Campos formulario reserva Tours
	$campos_form_t['llegada']      = __("Date", "dw_quetzal");
	$campos_form_t['personas']     = __("Persons", "dw_quetzal");
	$campos_form_t['transporte']   = __("Transport?", "dw_quetzal");
	$campos_form_t['almuerzo']     = __("Lunch?", "dw_quetzal");
	$campos_form_t['privado']      = __("Private?", "dw_quetzal");


#################################

# Otros datos de configuración

	# ID página donde se verá detalle de reservas
	# y se ingresa datos de tarjeta y personal
	
	$id_page_checkout = 6125;
	$id_page_terms    = 6129;
	$id_page_reservat = 6131;
	$id_page_contacto = 153;

#################################


# Agregar opciones al menú

	function dw_quetzal_menu()
	{
	    global $wpdb;
	    $contador = '';
	    add_menu_page( 'Administrador', 'Reservas ' . $contador, 'manage_options', 'dw_quetzal', 'inicio', DW_URL.'/icon.png', 3);

	    // add_submenu_page( 'dw_quetzal', 'Reservas', 'Reservas', 'manage_options', 'dw_quetzal', 'inicio' );
	    // remove_submenu_page( 'dw_quetzal', 'dw_quetzal' );

	    add_submenu_page( true, 'Detalle', 'Detalle', 'manage_options', 'dw_detalle', 'detalleReserva' );
	}
	add_action( 'admin_menu', 'dw_quetzal_menu' );

#################################


# Carga Archivos solo para sección frontal

	function cargarArchivos()
	{
		global $__FILE__;

        #wp_register_script( 'jquery-mask', plugins_url('jquery.mask.js', $__FILE__), array( 'jquery' ), null, false  );
        #wp_enqueue_script('jquery-mask');

        wp_register_script( 'jquery-ui', plugins_url('jqueryui/jquery-ui.js',  $__FILE__), array( 'jquery' ), null, false  );
        wp_enqueue_script('jquery-ui');

        wp_register_style( 'jquery-ui-css', plugins_url('jqueryui/jquery-ui.css',  $__FILE__), null, false   );       
        wp_enqueue_style('jquery-ui-css'); 

        wp_register_style( 'animate_css', plugins_url('animate.min.css',  $__FILE__), null, false   );       
        wp_enqueue_style('animate_css'); 


        #wp_register_script( 'jquery-ui-timepicker', plugins_url('datetime/dist/jquery-ui-timepicker-addon.js',  $__FILE__), array( 'jquery', 'jquery-ui' ), null, false  );
        #wp_enqueue_script('jquery-ui-timepicker');

        #wp_register_style( 'jquery-ui-timepicker', plugins_url('datetime/dist/jquery-ui-timepicker-addon.css',  $__FILE__), null, false   );       
        #wp_enqueue_style('jquery-ui-timepicker'); 


	        #wp_register_script( 'jquery-ui-i18n', plugins_url('datetime/dist/i18n/jquery-ui-timepicker-addon-i18n.min.js',  $__FILE__), array( 'jquery-ui-timepicker' ), null, false  );
	        #wp_enqueue_script('jquery-ui-i18n');

        #wp_register_script( 'jquery-ui-sliderAccess', plugins_url('datetime/dist/jquery-ui-sliderAccess.js',  $__FILE__), array( 'jquery-ui-timepicker' ), null, false  );
        #wp_enqueue_script('jquery-ui-sliderAccess');


		/*<link rel="stylesheet" media="all" type="text/css" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css" />
		<link rel="stylesheet" media="all" type="text/css" href="jquery-ui-timepicker-addon.css" />

		<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/ui/1.11.0/jquery-ui.min.js"></script>
		<script type="text/javascript" src="jquery-ui-timepicker-addon.js"></script>*/



        

		wp_register_style('quetzal_css', plugins_url('quetzal.css', $__FILE__));
		wp_enqueue_style('quetzal_css');

        wp_register_script( 'quetzal_js', plugins_url('script.js', $__FILE__), array( 'jquery' ), null, true  );
        wp_enqueue_script('quetzal_js');

        wp_localize_script( 'quetzal_js', 'quetzal', array( 'ajax_url' => admin_url( 'admin-ajax.php' ) ) );
	}

	function proceso_ajax()
	{
		global $alerts_form;
		echo '<div class="proceso_ajax">'.$alerts_form['proceso_ajax'].'</div>';
	}

	if(!is_admin()){
	    add_action( 'wp_enqueue_scripts', 'cargarArchivos' );
	    add_action( 'wp_footer', 'proceso_ajax', 1 );
	}

#################################

# Cambia el FROM del correo


	function wpb_sender_email( $original_email_address ) {
	    return 'info@quetzals.net';
	}
	 
	function wpb_sender_name( $original_email_from ) {
	    return 'Quetzals';
	}

	add_filter( 'wp_mail_from', 'wpb_sender_email' );
	add_filter( 'wp_mail_from_name', 'wpb_sender_name' );

#################################