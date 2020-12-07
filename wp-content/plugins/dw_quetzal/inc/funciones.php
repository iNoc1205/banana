<?php

	# Pantalla de inicio

	function inicio()
	{
		global $wpdb;

		$sql = 'SELECT * FROM reservas ORDER BY id DESC';
		$results = $wpdb->get_results( $sql, OBJECT );

		echo '<h2>Lista de reservas</h2>';

		echo '
		<div class="wrap">
		    <table class="wp-list-table widefat fixed striped posts reservas_admin">
		        <thead>
		            <tr>
		                <th width="70">Estado</th>
		                <th>Fecha de la solicitud</th>
		                <th>Cliente</th>
		                <th>Reservas</th>
		                <th>Acción</th>
		            </tr>
		        </thead>
		        <tbody id="the-list">';

		if(empty($results)){
		    echo '<tr><td colspan="5"><center>No hay registros</center></td></tr>';
		}

		foreach ($results as $key => $reg) {
			
			$cliente = (Object)unserialize($reg->mis_datos);
			$reservas = unserialize($reg->reservas);

			$fecha_reserva = utf8_encode( strftime("%A %d, %B %Y", strtotime($reg->fecha_registro)) );
			

			$html_reservas = '';
			foreach ($reservas as $key => $reserva) {
				foreach ($reserva as $key => $servicio) {
					$titulo_serv = get_the_title( $servicio['post_id'] );
					//var_export($servicio);
					$html_reservas .= $titulo_serv . '<br>';
				}
			}
	

	        $estado = '';
	        switch ($reg->estado) {
	            case 1:
	                $estado =  '<p style="color: #10ad16;">Nueva</p>';
	            break;
	            case 2:
	                $estado =  '<p style="color: #5c94dc;">Visto</p>';
	            break;
	        }

			echo '
			<tr>
				<td>'.$estado.'</td>
				<td>'.$fecha_reserva.'</td>
				<td>'.$cliente->nombre.'</td>
				<td>'.$html_reservas.'</td>
				<td>
					<a target="_blank" href="/wp-admin/admin.php?page=dw_detalle&id='.$reg->id.'">Ver</a> :: 
					<a href="#" onclick="return confirm(\'¿Eliminar registro?\')">Eliminar</a>
				</td>
			</tr>';

		}
	}

	#################################

	# Función muestra detalle de reserva en la parte
	# administrativa

	function detalleReserva()
	{
		global $wpdb, $campos_form, $campos_form_f, $campos_form_t, $labels;

		$sql = 'SELECT * FROM reservas WHERE id = %d';
		$row = $wpdb->get_row( $wpdb->prepare($sql, $_GET['id']), OBJECT );

		$sql_update = 'UPDATE reservas SET estado = 2 WHERE id = %d and estado = 1';

        $wpdb->query(
        	$wpdb->prepare($sql_update, $_GET['id'])
        );

		$cliente  = (Object)unserialize($row->mis_datos);
		$reservas = (Object)unserialize($row->reservas);
		$tarjeta  = (Object)unserialize($row->tarjeta);

		echo '<h2>'.$labels['personal_datos'].':</h2>';

		echo '
			<table>

				<tr>
					<td><b>'.$campos_form_f['nombre'].':</b></td>
					<td>'.$cliente->nombre.'</td>
				</tr>

				<tr>
					<td><b>'.$campos_form_f['correo'].':</b></td>
					<td>'.$cliente->correo.'</td>
				</tr>

				<tr>
					<td><b>'.$campos_form_f['telefono'].':</b></td>
					<td>'.$cliente->telefono.'</td>
				</tr>

			</table>';


		echo '<h2>'.$labels['detalleReserva'].':</h2>';


		$total_pagar = 0;

		foreach ($reservas as $tipo => $reserva) {
			foreach ($reserva as $key => $servicio) {
				$titulo_serv = get_the_title( $servicio['post_id'] );

				echo '<h4>'.$titulo_serv.'</h4>';

				switch ($tipo) {
					case 'tour':

						$fecha_llegada = utf8_encode( strftime("%A %d, %B %Y", strtotime( dateFormat( $servicio['llegada'], FALSE ) ) ) );

						echo '
							<table style="margin-left: 25px;">

								<tr>
									<td><b>'.$campos_form_t['llegada'].':</b></td>
									<td>'.$fecha_llegada.'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form_t['personas'].':</b></td>
									<td>'.$servicio['personas'].'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form_t['transporte'].'</b></td>
									<td>'.$servicio['transporte'].'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form_t['almuerzo'].'</b></td>
									<td>'.$servicio['almuerzo'].'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form_t['privado'].'</b></td>
									<td>'.$servicio['privado'].'</td>
								</tr>

								<tr>
									<td><b>'.$labels['precio'].'</b></td>
									<td>$'.$servicio['precio'].'</td>
								</tr>

							</table>';

							$total_pagar = $total_pagar + $servicio['precio'];

					break;

					case 'lodged':

						$fecha_llegada = utf8_encode( strftime("%A %d, %B %Y", strtotime( dateFormat( $servicio['llegada'], FALSE ) ) ) );
						$fecha_salida = utf8_encode( strftime("%A %d, %B %Y", strtotime( dateFormat( $servicio['salida'], FALSE ) ) ) );


				    	$dataPost     = getDataPost($servicio['post_id'], 'lodge');
						$dataTable    = getDataTable($dataPost['servicios']);
						$dataServicio = $dataTable[$servicio['tipo']];

						#var_export($dataServicio);

						echo '
							<table style="margin-left: 25px;">

								<tr>
									<td><b>'.$campos_form['llegada'].':</b></td>
									<td>'.$fecha_llegada.'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form['salida'].':</b></td>
									<td>'.$fecha_salida.'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form['adultos'].':</b></td>
									<td>'.$servicio['adultos'].'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form['ninos'].':</b></td>
									<td>'.$servicio['ninos'].'</td>
								</tr> ';

						if( isset($servicio['infantes']) and  is_numeric($servicio['infantes']) ){

							echo '<tr>
										<td><b>'.$campos_form['infantes'].':</b></td>
										<td>'.$servicio['infantes'].'</td>
									</tr>';

						}

						echo '<tr>
									<td><b>'.$campos_form['tipo'].':</b></td>
									<td>'.$dataServicio['servicio'].'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form['cuarto'].':</b></td>
									<td>'.$dataServicio['temporadas'][$servicio['id_tempor']]['tipos_cuartos'][$servicio['cuarto']].'</td>
								</tr>

								<tr>
									<td><b>'.$campos_form['ocupacion'].':</b></td>
									<td>'.$dataServicio['temporadas'][$servicio['id_tempor']]['ocupaciones'][$servicio['ocupacion']].'</td>
								</tr>

								<tr>
									<td><b>'.$labels['precio'].'</b></td>
									<td>$'.$servicio['precio'].'</td>
								</tr>

							</table>';

							$total_pagar = $total_pagar + $servicio['precio'];

					break;
				}

			}
		}



		echo '
			<table style="">

				<tr>
					<td><h2>'.$labels['total_pagar'].': $'.$total_pagar.'</h2></td>
				</tr>

			</table>';



		echo '<h2>'.$labels['tarjeta_datos'].':</h2>';

		echo '
			<table>

				<tr>
					<td><b>'.$campos_form_f['tipo_tar'].':</b></td>
					<td>'.decrypt( $tarjeta->tipo_tar ) .'</td>
				</tr>

				<tr>
					<td><b>'.$campos_form_f['nume_tar'].':</b></td>
					<td>'.decrypt( $tarjeta->nume_tar ).'</td>
				</tr>

				<tr>
					<td><b>'.$campos_form_f['nomb_tar'].':</b></td>
					<td>'.decrypt( $tarjeta->nomb_tar ).'</td>
				</tr>

				<tr>
					<td><b>'.$campos_form_f['expi_tar'].':</b></td>
					<td>'.decrypt( $tarjeta->expi_tar ).'</td>
				</tr>

				<tr>
					<td><b>'.$campos_form_f['code_tar'].':</b></td>
					<td>'.decrypt( $tarjeta->code_tar ).'</td>
				</tr>

			</table>';
	}

	#################################

	# Retorna datos del post

	function getDataPost($post_id = NULL, $post_type = NULL )
	{
		if($post_type == NULL){
			$post_type = get_post_type();
		}

		$return = array();

		if( !empty($post_id) ) {
			$return['post_id'] = $post_id;
		}else{
	    	$return['post_id'] = get_the_ID();
		}

	    $return['titulo']         = get_the_title( $return['post_id'] );
	    $return['post_type']      = $post_type;
	    $return['moneda']         = '$';


	    if($post_type == 'lodge'){
	    	$return['servicios']      = get_field( 'lservices', $return['post_id']);
	    	$return['precio_ninos']   = get_field( 'price_for_children', $return['post_id']);
	    	$return['max_children']   = get_field( 'max_children', $return['post_id']);
		}

	    if($post_type == 'project'){
	    	$return['price_per_person']                  = get_field( 'price_per_person', $return['post_id']);
	    	$return['price_for_private']                 = get_field( 'price_for_private', $return['post_id']);
	    	$return['minimum_of_people']                 = get_field( 'minimum_of_people', $return['post_id']);
	    	$return['maximum_of_people']                 = get_field( 'maximum_of_people', $return['post_id']);
	    	
	    	$return['transport_per_person']              = get_field( 'transport_per_person', $return['post_id']);
	    	$return['price_per_transport']               = get_field( 'price_per_transport', $return['post_id']);
	    	$return['lunch_price']                       = get_field( 'lunch_price', $return['post_id']);
	    	$return['enable_price_by_group_of_people']   = get_field( 'enable_price_by_group_of_people', $return['post_id']);
	    	$return['price_for_the_group']               = get_field( 'price_for_the_group', $return['post_id']);
	    	$return['min_people']                        = get_field( 'min_people', $return['post_id']);
	    	$return['max_people']                        = get_field( 'max_people', $return['post_id']);
	    	$return['price_for_private_group']           = get_field( 'price_for_private_group', $return['post_id']);
	    	$return['enable_additional_people']          = get_field( 'enable_additional_people', $return['post_id']);
	    	$return['price_per_additional_person']       = get_field( 'price_per_additional_person', $return['post_id']);
	    	$return['maximum_of_additional_people']      = get_field( 'maximum_of_additional_people', $return['post_id']);
	    }

	    return $return;
	}

	#################################

	# Función devuelve array con estructura de:
	# servicios, temporadas, cuartos, ocupaciones y precios

	function getDataTable($servicios)
	{
	    $tipo_cuartos    = array();
	    $ocupaciones = array();
	    $precios = array();
	    $temporadas = array();
	    $tabla  = array();

	    foreach ($servicios as $key => $servicio) {

	    	foreach ($servicio['seansons'] as $key => $seanson) {

	    		foreach ($seanson['prices'] as $key => $price) {

	    			if( ! in_array($price['occupancy'], $ocupaciones) )
	    			{
	    				$term = get_term( $price['occupancy'], 'occupancy' );
	    				$ocupaciones[$price['occupancy']] = $term->name;
	    			}

	    			if( ! in_array($price['bedroom'], $tipo_cuartos) )
	    			{
	    				$term = get_term( $price['bedroom'], 'bedroom' );
	    				$tipo_cuartos[$price['bedroom']] = $term->name;
	    			}

	    			$precios[$price['occupancy']][$price['bedroom']] = $price['price'];

	    		}

	    		$temporadas[] = 
				array(
					'nombre' => $seanson['season_name'],
					'desde' => $seanson['date_from'],
					'hasta' => $seanson['date_up'],
					'maxcol' => count($tipo_cuartos),
					'tipos_cuartos' => $tipo_cuartos,
					'ocupaciones' => $ocupaciones,
					'precios' => $precios
				);
			    $tipo_cuartos    = array();
			    $ocupaciones = array();
			    $precios = array();

	    	}

			$tabla[] = array(
				'servicio' => $servicio['service_name'],
				'temporadas' => $temporadas
			);

			$temporadas = array();
	    }

	    return $tabla;
	}

	#################################

	# Cambiar formato de fecha

	function dateFormat($fecha, $hora = TRUE)
	{
		$formato = 'Y-m-d g:ia';
		if($hora == FALSE){
			$formato = 'Y-m-d';
		}

		return date($formato, strtotime(str_replace("/", "-", $fecha)));
	}

	#################################


	# Llenar string con campo validado

	function addField($msg, $field)
	{
		return str_replace('{field}', $field, $msg);
	}

	#################################


	# Encripta información

	function encrypt($string)
	{
	   global $clave;
	   $key = $clave;
	   $result = '';
	   for($i=0; $i<strlen($string); $i++) {
	      $char = substr($string, $i, 1);
	      $keychar = substr($key, ($i % strlen($key))-1, 1);
	      $char = chr(ord($char)+ord($keychar));
	      $result.=$char;
	   }
	   return base64_encode($result);
	}

	#################################


	# Desencripta información

	function decrypt($string)
	{
	   global $clave;
	   $key = $clave;
	   $result = '';
	   $string = base64_decode($string);
	   for($i=0; $i<strlen($string); $i++) {
	      $char = substr($string, $i, 1);
	      $keychar = substr($key, ($i % strlen($key))-1, 1);
	      $char = chr(ord($char)-ord($keychar));
	      $result.=$char;
	   }
	   return $result;
	}

	#################################


	# HTML Lodges

	function HtmlLodges($servicio)
	{

		global $campos_form, $labels, $alerts_form;

    	$dataPost     = getDataPost($servicio['post_id'], 'lodge');
		$dataTable    = getDataTable($dataPost['servicios']);
		$dataServicio = $dataTable[$servicio['tipo']];

		$llegada_2 = new DateTime( dateFormat( $servicio['llegada'] ) );
		$salida_2  = new DateTime( dateFormat( $servicio['salida'] ) );

		$llegada = new DateTime( dateFormat( $servicio['llegada'], FALSE ) );
		$salida  = new DateTime( dateFormat( $servicio['salida'], FALSE ) );

		foreach ($dataServicio['temporadas'] as $k => $temporada) {
			
			$desde = new DateTime( dateFormat( $temporada['desde'] ) );
			$hasta = new DateTime( dateFormat( $temporada['hasta'] ) );

			if($llegada >= $desde and $llegada <= $hasta){
				$temporadaActivadas[$k]['llegada'] = array('desde' => $temporada['desde'], 'hasta' => $temporada['hasta']);
			}

			if($salida <= $hasta){
				$temporadaActivadas[$k]['salida'] = array('desde' => $temporada['desde'], 'hasta' => $temporada['hasta']);
				break;
			}

		}

		$cantidadTemporadas = count( $temporadaActivadas );
		$precios           = NULL;
		$total_por_cuarto  = 0;         
		

		if($cantidadTemporadas == 1){

			$precio_por_noche  = NULL;

			$interval = $llegada->diff($salida);
			foreach ($temporadaActivadas as $key => $temp) {
				$precios           = $dataServicio['temporadas'][$key]['precios'];
				$precio_por_noche  = $precios[$servicio['ocupacion']][$servicio['cuarto']];
			}
			$noches_reservadas = $interval->format('%d');
			if($noches_reservadas < 1){
				$noches_reservadas = 1;
			}
			$total_por_cuarto = $precio_por_noche * $noches_reservadas;
		}

		if($cantidadTemporadas == 2){
			
			$noches_reservadas_t1 = 0;
			$noches_reservadas_t2 = 0;
			$precio_por_noche_t1  = NULL;
			$precio_por_noche_t2  = NULL;

			$fin_temporada1 = NULL;

			$ciclo = 0;

			foreach ($temporadaActivadas as $key => $temp) {

				switch ($ciclo) {
					case 0:
						$fin_temporada1 = new DateTime( dateFormat( $temp['llegada']['hasta'], FALSE ) );
						$interval_t1 = $llegada->diff($fin_temporada1);
						$noches_reservadas_t1 = $interval_t1->format('%d'); 
						if($noches_reservadas_t1 < 1){
							$noches_reservadas_t1 = 1;
						}
						$precios           = $dataServicio['temporadas'][$key]['precios'];
						$precio_por_noche_t1  = $precios[$servicio['ocupacion']][$servicio['cuarto']];

					break;
					case 1:
						$interval_t2 = $fin_temporada1->diff($salida);
						$noches_reservadas_t2 = $interval_t2->format('%d');
						if($noches_reservadas_t2 < 1){
							$noches_reservadas_t2 = 1;
						}
						$precios           = $dataServicio['temporadas'][$key]['precios'];
						$precio_por_noche_t2  = $precios[$servicio['ocupacion']][$servicio['cuarto']];

					break;
				}

				$ciclo++;
			}

			$total_por_cuarto = ($noches_reservadas_t1 * $precio_por_noche_t1) + ($noches_reservadas_t2 * $precio_por_noche_t2);


		}

		$_SESSION['precio'][$servicio['post_id']] = $total_por_cuarto;
		$_SESSION['servicio']['lodged'][$servicio['post_id']]['precio'] = $total_por_cuarto;

        return '<div class="servicios_car servicio_'.$key.'">
        	<h3 class="reservation-detail-title">'.$dataPost['titulo'].'</h3> <a data-tipo="1" data-id="'.$servicio['post_id'].'" onclick="return confirm(\''.$alerts_form['eliminar_servi'].'\')" class="eliminar_servicio">X</a>
            <table width="100%" class="tb_responsive">
                <tbody>
                    <tr>
                        <td>
                        	<b>'.$campos_form['llegada'].'</b><br>
                        	'.$llegada_2->format('Y-m-d g:ia').'<br><br>

							<b>'.$campos_form['salida'].'</b><br>
                        	'.$salida_2->format('Y-m-d g:ia').'
                        		
                        </td>

                        <td>
							<b>'.$campos_form['adultos'].'</b><br>
                        	'.$servicio['adultos'].'<br><br>

							<b>'.$campos_form['ninos'].'</b><br>
							'.$servicio['ninos'].'
                        </td>
                        <td>
                        	<b>'.$campos_form['tipo'].'</b><br>
                        	'.$dataServicio['servicio'].'<br><br>

							<b>'.$campos_form['cuarto'].'</b><br>
                        	'.$dataServicio['temporadas'][$servicio['id_tempor']]['tipos_cuartos'][$servicio['cuarto']].'<br><br>
							
							<b>'.$campos_form['ocupacion'].'</b><br>
                        	'.$dataServicio['temporadas'][$servicio['id_tempor']]['ocupaciones'][$servicio['ocupacion']].'
                        		
                        </td>
                        <td>
                        	<b>'.$labels['total'].'</b><br>
                        	'.$dataPost['moneda'].''.$total_por_cuarto.'
                        	
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>';
	}

	#################################


	# HTML Tours

	function HtmlTours($tour)
	{

		global $campos_form_t, $labels, $alerts_form;
		
		$dataPost = getDataPost($tour['post_id'], 'project');

		$tour_grupal         = FALSE;
		$personasAdicionales = 0;
		$precio_persona_priv = 0;
		$precio_total        = 0;


		# Precio adiciona por privado por persona
		if( ! empty($dataPost['price_for_private']) and $tour['privado'] == 'Yes' ){
			$precio_persona_priv = $dataPost['price_for_private'];
		}

		# Si el tour es por paquete de personas
		if( ! empty($dataPost['enable_price_by_group_of_people']) ){
			$tour_grupal = TRUE;
			$precio_total = $dataPost['price_for_the_group'];
			if( isset($tour['privado']) and $tour['privado'] == 'Yes'){
				$precio_total = $dataPost['price_for_private_group'];
			}
		}


		# Precios por personas adicionales
		if( ! empty($dataPost['enable_additional_people']) ){
			if($tour_grupal == TRUE){
				$maximas_personas = $dataPost['max_people'];
			} else {
				$maximas_personas = $dataPost['maximum_of_people'];
			}
			if($tour['personas'] > $maximas_personas){
				$personasAdicionales = $tour['personas'] - $maximas_personas;
				$precio_total = $precio_total + ( $personasAdicionales * ( $dataPost['price_per_additional_person'] + $precio_persona_priv ) );
			}
		}

		# Precio por transporte
		if( ! empty($dataPost['price_per_transport']) and $tour['transporte'] == 'Yes' ){

			if( $dataPost['transport_per_person'] ){

				$precio_total = $precio_total + ( $dataPost['price_per_transport'] * $tour['personas'] );

			} else {

				$cantidad_autos = 1;
				/*if ($tour['personas'] > 4) {
					$cantidad_autos = 2;
				}
				if ($tour['personas'] > 8) {
					$cantidad_autos = 3;
				}*/
				$precio_total = $precio_total + ( $dataPost['price_per_transport'] * $cantidad_autos );

			}

		}

		# Precio por almuerzo
		if( ! empty($dataPost['lunch_price']) and  $tour['almuerzo'] == 'Yes' ){
			$precio_total = $precio_total + ( $dataPost['lunch_price'] * $tour['personas'] );
		}


		if($tour_grupal == FALSE){
			# Precio por persona por cantidad de personas
			if( ! empty($dataPost['price_per_person']) ){
				$precio_persona = $dataPost['price_per_person'] + $precio_persona_priv;
				if($personasAdicionales > 0){
					$precio_total = $precio_total + ( $maximas_personas * $precio_persona );
				} else {
					$precio_total = $precio_total + ( $tour['personas'] * $precio_persona );
				}
			}
		}

		$fecha  = new DateTime( dateFormat( $tour['llegada'] ) );

		$_SESSION['precio'][$tour['post_id']] = $precio_total;
		$_SESSION['servicio']['tour'][$tour['post_id']]['precio'] = $precio_total;

		$return = '';

        $return .= '<div class="servicios_car servicio_'.$tour['post_id'].'">
        	<h3 class="reservation-detail-title">'.$dataPost['titulo'].'</h3> <a data-tipo="2" data-id="'.$tour['post_id'].'" onclick="return confirm(\''.$alerts_form['eliminar_servi'].'\')" class="eliminar_servicio">X</a>
            <table width="100%" class="tb_responsive">
                <tbody>
                    <tr>
                        <td>
                        	<b>'.$campos_form_t['llegada'].'</b><br>
                        	'.$fecha->format('Y-m-d g:ia').'
                        </td>
                        <td>
							<b>'.$campos_form_t['personas'].'</b><br>
                        	'.$tour['personas'].'
                        </td>';

						if( isset($tour['transporte']) ){
							$return .= '
							<td>
	                        	<b>'.$campos_form_t['transporte'].'</b><br>
	                        	'.$tour['transporte'].'
	                        </td>';
						}

						if( isset($tour['almuerzo']) ){
							$return .= '
							<td>
	                        	<b>'.$campos_form_t['almuerzo'].'</b><br>
	                        	'.$tour['almuerzo'].'
	                        </td>';
						}

						if( isset($tour['privado']) ){
							$return .= '
							<td>
	                        	<b>'.$campos_form_t['privado'].'</b><br>
	                        	'.$tour['privado'].'
	                        </td>';
						}

					$return .= '
                        <td>
                        	<b>'.$labels['total'].'</b><br>
                        	'.$dataPost['moneda'].' '.$precio_total.'
                        	
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>';


       	return $return;

	}