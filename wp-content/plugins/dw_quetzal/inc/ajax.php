<?php


function cuarto_callback()
{
	global $campos_form, $alerts_form;

	unset($_SESSION['bedroom']);

	$dataPost = getDataPost($_POST['post_id'], 'lodge');
	$temporadas = $dataPost['servicios'][$_POST['tipo']]['seansons'];


	$return = NULL; $requerido = '';


	if($_POST['llegada'] == ''){
		$requerido .= addField($alerts_form['requerido'], $campos_form['llegada']) . '<br>';
	}
	if($_POST['salida'] == ''){
		$requerido .= addField($alerts_form['requerido'], $campos_form['salida']) . '<br>';
	}
	if(empty($_POST['adultos'])){
		$requerido .= addField($alerts_form['requerido'], $campos_form['adultos']) . '<br>';
	}
	if($_POST['ninos'] == ''){
		$requerido .= addField($alerts_form['requerido'], $campos_form['ninos']) . '<br>';
	}


	if($requerido != ''){

		$return = json_encode(
			array(
				'tipo' => 0,
				'html' => $requerido
			)
		);

	}else{


		$llegada = new DateTime( dateFormat( $_POST['llegada'] ) );
		$salida  = new DateTime( dateFormat( $_POST['salida'] ) );

		$primer_temporada     = reset($temporadas);
		$primer_temporada_key = key($temporadas);

		$ultima_temporada     = end($temporadas);
		$ultima_temporada_key = key($temporadas);

		$date_from    = new DateTime( dateFormat( $primer_temporada['date_from'] )  );
		$date_up      = new DateTime( dateFormat( $ultima_temporada['date_up'] ) );

		$hoy = new DateTime( dateFormat( date("d/m/Y") ) );

		if( $llegada >= $date_from and $salida <= $date_up ){

			$infantes = 0;
			if($_POST['infantes'] != ''){
				$infantes = $_POST['infantes'];
			}

			$total_personas = ($_POST['adultos'] + $_POST['ninos']) - $infantes;
			$occup = pods('occupancy');

			$temporada = NULL;
			$id_tempor = NULL;

			foreach ($temporadas as $key => $temp) {
				$date_from_tp = new DateTime( dateFormat( $temp['date_from'] )  );
				$date_up_tp   = new DateTime( dateFormat( $temp['date_up'] ) );

				if($llegada >= $date_from_tp and $salida <= $date_up_tp and $hoy <= $date_up_tp){
					$id_tempor = $key;
					$temporada = $temp;
					break;
				}
			}

			if(is_array($temporada) and !empty($temporada)){
				
				$bedroom_opt = '';

				$prices = $temporada['prices'];
				$array_bedroom = array();
			

				foreach ($prices as $key => $opciones) {
					$occup->fetch($opciones['occupancy']);
					$capacidad = $occup->get_field('capacidad');

					if( !in_array($opciones['bedroom'], $array_bedroom) and $total_personas <= $capacidad)
					{
						$bedroom = get_term( $opciones['bedroom'], 'bedroom' );
						$bedroom_opt .= '<option value="'.$opciones['bedroom'].'">'.$bedroom->name.'</option>';
						$array_bedroom[] = $opciones['bedroom'];
					}

					$_SESSION['bedroom'][$opciones['bedroom']][] = $opciones['occupancy'];

				}


				if ($bedroom_opt != '') {
					$bedroom_select = '<label>'.$campos_form['cuarto'] .'</label>';
					$bedroom_select .= '
					<input type="hidden" name="id_tempor" value="'.$id_tempor.'">
					<select class="getfield" name="cuarto" id="fcuarto" data-accion="ocupacion">
						<option value="">'.__("Select", "dw_quetzal").'</option>
						' . $bedroom_opt . '
					</select>
					<div class="select_ocupacion"></div>
					';

					$return = json_encode(
						array(
							'tipo' => 1,
							'html' => $bedroom_select
						)
					);

				}else{

					$return = json_encode(
						array(
							'tipo' => 0,
							'html' => $alerts_form['excedido']
						)
					);

				}
			} else {
				$return = json_encode(
					array(
						'tipo' => 0,
						'html' => $alerts_form['error_rango_fe'],
						'limp' => 1
					)
				);
			}


		} else {

			$return = json_encode(
				array(
					'tipo' => 0,
					'html' => $alerts_form['precio_no_disp'],
					'limp' => 1
				)
			);

		}
	}

	wp_die( $return );
}
add_action('wp_ajax_cuarto','cuarto_callback');
add_action('wp_ajax_nopriv_cuarto','cuarto_callback');



function ocupacion_callback()
{
	global $campos_form;

	$infantes = 0;
	if($_POST['infantes'] != ''){
		$infantes = $_POST['infantes'];
	}

	$total_personas = ($_POST['adultos'] + $_POST['ninos']) - $infantes;
	$occup = pods('occupancy');

	$occupancy_opt = '';
	foreach ($_SESSION['bedroom'][$_POST['cuarto']] as $key => $opcion) {

		$occup->fetch($opcion);
		$capacidad = $occup->get_field('capacidad');

		if($total_personas <= $capacidad){
			$occupancy = get_term( $opcion, 'occupancy' );
			$occupancy_opt .= '<option value="'.$opcion.'">'.$occupancy->name.'</option>';
		}

	}

	$occupancy_select = '<label>'.$campos_form['ocupacion'].'</label>';
	$occupancy_select .= '<select name="ocupacion" id="focupacion">
	<option value="">'.__("Select", "dw_quetzal").'</option>
	' . $occupancy_opt . '</select>';

	$return = json_encode(
		array(
			'tipo' => 1,
			'html' => $occupancy_select
		)
	);

	wp_die( $return );
}
add_action('wp_ajax_ocupacion','ocupacion_callback');
add_action('wp_ajax_nopriv_ocupacion','ocupacion_callback');



function agregar_callback()
{
	global $campos_form, $alerts_form, $id_page_checkout;

	$requerido = '';
	unset($campos_form['btn_continuar']);

	foreach ($campos_form as $key => $value) {

		$validar = TRUE;
		if($key == 'infantes' and $_POST['ninos'] <= 0)
		{
			$validar = FALSE;
		}
		if($_POST[$key] == '' and $validar == TRUE){
			$requerido .= addField($alerts_form['requerido'], $campos_form[$key]) . '<br>';
		}
	}

	if( empty($requerido) )
	{
		unset($_POST['action']);
		$_SESSION['servicio']['lodged'][$_POST['post_id']] = $_POST;
		$return = json_encode(
			array(
				'tipo' => 1,
				'url' => get_the_permalink($id_page_checkout)
			)
		);
	} else {
		$return = json_encode(
			array(
				'tipo' => 0,
				'html' => $requerido
			)
		);
	}

	wp_die( $return );
}
add_action('wp_ajax_agregar','agregar_callback');
add_action('wp_ajax_nopriv_agregar','agregar_callback');



function agregar_tour_callback()
{
	global $campos_form_t, $alerts_form, $id_page_checkout;

	$requerido = '';

	foreach ($campos_form_t as $key => $value) {

		if( isset($_POST[$key]) and $_POST[$key] == ''){
			$requerido .= addField($alerts_form['requerido'], $campos_form_t[$key]) . '<br>';
		}

		if($key == 'personas'){
			$dataPost = getDataPost($_POST['post_id'], 'project');
			if( ! empty($dataPost['enable_price_by_group_of_people']) ){
				$min_personas = $dataPost['min_people'];
			} else {
				$min_personas = $dataPost['minimum_of_people'];
			}
			if($_POST[$key] < $min_personas)
			{
				$requerido .= addField($alerts_form['minimum'], $min_personas) . '<br>';
			}
		}
	}

	if( empty($requerido) )
	{
		unset($_POST['action']);
		$_SESSION['servicio']['tour'][$_POST['post_id']] = $_POST;

		$return = json_encode(
			array(
				'tipo' => 1,
				'url' => get_the_permalink($id_page_checkout)
			)
		);
	} else {
		$return = json_encode(
			array(
				'tipo' => 0,
				'html' => $requerido
			)
		);
	}

	wp_die( $return );
}
add_action('wp_ajax_agregar_tour','agregar_tour_callback');
add_action('wp_ajax_nopriv_agregar_tour','agregar_tour_callback');



function eliminar_callback()
{
	global $id_page_checkout;

	switch ($_POST['tipo']) {
		case '1':
			unset( $_SESSION['servicio']['lodged'][$_POST['id']] );
			$cantidad_disp = count($_SESSION['servicio']['lodged']);
			if($cantidad_disp == 0){
				unset( $_SESSION['servicio']['lodged'] );
			}
		break;
		case '2':
			unset( $_SESSION['servicio']['tour'][$_POST['id']] );
			$cantidad_disp = count($_SESSION['servicio']['tour']);
			if($cantidad_disp == 0){
				unset( $_SESSION['servicio']['tour'] );
			}
		break;
	}

	$cantidad_disp = count($_SESSION['servicio']);
	if($cantidad_disp == 0){
		unset( $_SESSION['servicio'] );
	}

	$return = json_encode(
		array(
			'tipo' => 1,
			'url' => get_the_permalink($id_page_checkout)
		)
	);

	wp_die( $return );
}
add_action('wp_ajax_eliminar','eliminar_callback');
add_action('wp_ajax_nopriv_eliminar','eliminar_callback');



function reserva_callback()
{
	global $campos_form_f, $alerts_form, $wpdb, $id_page_reservat;

	$requerido = '';
	unset($campos_form_f['btn_continuar']);

	foreach ($campos_form_f as $key => $value) {

		if($key == 'expi_tar'){
			
			if($_POST['expi_tar_m'] == ''){
				$requerido .= addField($alerts_form['requerido'], $campos_form_f[$key]) . '<br>';
			}
			if($_POST['expi_tar_a'] == ''){
				$requerido .= addField($alerts_form['requerido'], $campos_form_f[$key]) . '<br>';
			}
		} else {

			if($_POST[$key] == ''){
				$requerido .= addField($alerts_form['requerido'], $campos_form_f[$key]) . '<br>';
			}

		}

	}

	if( empty($requerido) )
	{

		$datos_tarjeta = serialize( array(
			'tipo_tar' => encrypt( $_POST['tipo_tar'] ),
			'nume_tar' => encrypt( $_POST['nume_tar'] ),
			'nomb_tar' => encrypt( $_POST['nomb_tar'] ),
			'expi_tar' => encrypt( $_POST['expi_tar_m'] . ' / '. $_POST['expi_tar_a'] ),
			'code_tar' => encrypt( $_POST['code_tar'] )
		) );

		$datos_personales = serialize( array(
			'nombre' => $_POST['nombre'],
			'correo' => $_POST['correo'],
			'telefono' => $_POST['telefono']
		) );

		$datos_reservas = serialize( $_SESSION['servicio'] );

		$datos_completo = array(
			'fecha_registro' => date('Y-m-d'),
			'reservas'  => $datos_reservas,
			'tarjeta'   => $datos_tarjeta,
			'mis_datos' => $datos_personales
		);
	
		$wpdb->insert('reservas', $datos_completo, '%s');

		$datos['correo']  = 'dennis@selvamar.com, wodio@selvamar.com, andrey@selvamar.com';
		$datos['asunto']  = 'Nueva reserva de ' . $_POST['nombre'];
		$datos['mensaje'] = 'Ver detalles ingresando a: <a href="https://www.quetzals.net/wp-admin/">https://www.quetzals.net/wp-admin/</a>';

		wp_mail($datos['correo'],  $datos['asunto'],  $datos['mensaje']);

		unset($_SESSION['servicio']);

		$return = json_encode(
			array(
				'tipo' => 1,
				'url' => get_the_permalink($id_page_reservat)
			)
		);
	} else {
		$return = json_encode(
			array(
				'tipo' => 0,
				'html' => $requerido
			)
		);
	}

	wp_die( $return );
}
add_action('wp_ajax_reserva','reserva_callback');
add_action('wp_ajax_nopriv_reserva','reserva_callback');