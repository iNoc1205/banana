<?php

# Retorna tabla html con los precios

	function fn_tabla_precios()
	{

	    $html = '';

	    $dataPost = getDataPost();

	    $ano_actual = date("Y");

	    switch ($dataPost['post_type']) {
	    	case 'lodge':

			    $tabla = getDataTable( $dataPost['servicios'] );

		    	
			    foreach ($tabla as $k => $servicio) {

			    	$html .= '<div class="quetzal_servicios [o]">';
			    	$html .= '<h2>'.$servicio['servicio'].'</h2>';

			    	$otro_ano = false;
			    	$ocultar_servicio = true;

			    	foreach ($servicio['temporadas'] as $k => $temporada) {


					    $thTitles = array();
					    $td = '';
					    $trow = '';
					    $patron = '[TD]';

						$dateDesde = DateTime::createFromFormat('d/m/Y', $temporada['desde']);
						$desde = $dateDesde->format('M d/Y');

						$dateHasta = DateTime::createFromFormat('d/m/Y', $temporada['hasta']);
						$hata = $dateHasta->format('M d/Y');


				    	if($dateHasta->format('Y') > $ano_actual){
				    		$html .= '<div class="temp_oculta animated">';
				    		$otro_ano = true;
				    	} else {
				    		$ocultar_servicio = false;
				    	}


					    $html .= '<div class="quetzal_temporada">';
					    
					    $html .= '<h3>'.$temporada['nombre'].' ('.$desde.' - '.$hata.')</h3>';

					   

					    foreach ($temporada['ocupaciones'] as $id_ocupacion => $ocupacion) {

					    	$td .= '<tr>[TI]'.$patron.'</tr>';

					    	foreach ($temporada['tipos_cuartos'] as $id_cuarto => $cuarto) {

					    		if( ! in_array($id_cuarto, $thTitles)){
					    			$thTitles[$id_cuarto] = $cuarto;
					    		}

					    		$precio = @$temporada['precios'][$id_ocupacion][$id_cuarto];
					    		if( !empty($precio) ){
					    			$precio = $dataPost['moneda'] . $precio;
					    		}

					    		$td = str_replace('[TI]', '<td><strong>'.$ocupacion.'</strong></td>', $td);
					    		$td = str_replace($patron, ('<td>'.$precio.'</td>' . $patron), $td);
					    	}
					    	$trow .= str_replace($patron, '', $td);
					    	$td = '';

					    }

					    $th = '<td><strong>'.__("Occupancy", "dw_quetzal").'</strong></td>';
					    foreach ($thTitles as $key => $cuarto) {
					    	$th .= '<td><strong>'.$cuarto.'</strong></td>';
					    }

					    $html .= '<table>';

					    $html .= '<tr class="quetzal_th">'.$th.'</tr>';

					    $html .= $trow;

					    $html .= '</table>';

					    $html .= '</div>';


				    	if($otro_ano){
				    		$html .= '</div>';
				    	}

			    	}

			    	if($ocultar_servicio){
			    		$html = str_replace("[o]", "temp_oculta animated", $html);
			    	} else {
			    		$html = str_replace("[o]", "", $html);
			    	}

			    	$html .= '</div>';

			    }

			    if($otro_ano){
			    	
			    	$html .= do_shortcode('[cmsmasters_button button_link="javascript:void(0);" classes="vermastemp" button_text_align="center" button_line_height="35" button_font_weight="normal" button_font_style="normal" button_border_style="solid" animation_delay="0"]See more seasons[/cmsmasters_button]');
			    	//$html .= '<center><a href="jaavscript:void(0);" class="vermastemp">See more seasons</a></center>';
			    }

	    	break;
	    	
	    	case 'project':

	    		$moneda = $dataPost['moneda'];

		    	$html .= '<div class="quetzal_servicios">';

			    $html .= '<table>';

			    $html .= '
			    <tr class="quetzal_th">
					<td colspan="2">PRICES</td>
			    </tr>';

			    if( !empty($dataPost['enable_price_by_group_of_people']) ){

				    $html .= '
					    <tr>
							<td>Price per group ('.$dataPost['min_people'].' - '.$dataPost['max_people'].' persons)</td>
							<td>'.$moneda.$dataPost['price_for_the_group'].'</td>
					    </tr>';

				    if( !empty($dataPost['price_for_private_group'])){
					    $html .= '
						    <tr>
								<td>Private tour ('.$dataPost['min_people'].' - '.$dataPost['max_people'].' persons)</td>
								<td>'.$moneda.$dataPost['price_for_private_group'].'</td>
						    </tr>';
				    }

			    } else {

				    if( !empty($dataPost['price_per_person']) ){
				    $html .= '
					    <tr>
							<td>Price per person</td>
							<td>'.$moneda.$dataPost['price_per_person'].'</td>
					    </tr>';
				    }

				    if( !empty($dataPost['price_for_private'])){
					    $html .= '
						    <tr>
								<td>Additional price per person for private tour</td>
								<td>'.$moneda.$dataPost['price_for_private'].'</td>
						    </tr>';

				    }

			    }

			    if( !empty($dataPost['enable_additional_people']) ){
			    $html .= '
				    <tr>
						<td>Price per additional person</td>
						<td>'.$moneda.$dataPost['price_per_additional_person'].' (up to '.$dataPost['maximum_of_additional_people'].' persons)</td>
				    </tr>';
			    }

			    if( !empty($dataPost['price_per_transport']) ){
			    	$limi_trans = '';
			    	$tipo_trans = 'Price per transport';
			    	if( !empty($dataPost['transport_per_person']) ){
			    		$tipo_trans = 'Price of transport per person';
			    		$limi_trans = '';
			    	}

			    $html .= '
				    <tr>
						<td>'.$tipo_trans.'</td>
						<td>'.$moneda.$dataPost['price_per_transport'].' '.$limi_trans.'</td>
				    </tr>';
			    }

			    if( !empty($dataPost['lunch_price']) ){
			    $html .= '
				    <tr>
						<td>Lunch per person</td>
						<td>'.$moneda.$dataPost['lunch_price'].'</td>
				    </tr>';
			    }


			    $html .= '</table>';

			    $html .= '</div>';

	    	break;
	    }



	    #echo '<pre>';
	    #var_export($servicio);
	    #var_export($lservices);
	    #echo '</pre>';

	    return $html;
	}
	add_shortcode( 'tabla_precios', 'fn_tabla_precios' );

#################################

# Retorna formulario de reserva

	function fn_form_reserva()
	{
		global $campos_form, $campos_form_t, $labels, $id_page_contacto;

		$dataPost = getDataPost();

		$form = FALSE;

		if(get_post_type() == 'lodge' and !empty($dataPost['servicios'])){
		
		    $data = getDataTable( $dataPost['servicios'] );

			$form = '<div class="formulario_reserva" id="booknow">';

			$form .= do_shortcode('[cmsmasters_button button_link="#booknow" button_target="self" button_text_align="center" button_style="cmsmasters_but_bg_expand_diag" button_font_weight="normal" button_font_style="normal" button_icon="cmsmasters-icon-ok" button_border_style="solid" button_border_width="0" button_bg_color="#de8125" button_bg_color_h="#acd52c" button_text_color="#ffffff" animation_delay="0" classes="booknow"]' . __("BOOK NOW", "dw_quetzal") . '[/cmsmasters_button]');

			$form .= '<h3>' . __("BOOK NOW", "dw_quetzal") . '</h3>';

			$form .= '<form id="form_reserva">';

			$form .= '<input type="hidden" name="post_id" id="fpost_id" value="'.get_the_ID().'">';
			$form .= '<input type="hidden" name="action" id="faction" value="agregar">';

			$form .= '<label>'.$campos_form['llegada'].'</label>';
			$form .= '<input class="date" type="text" name="llegada" id="fllegada">';

			$form .= '<label>'.$campos_form['salida'].'</label>';
			$form .= '<input class="date" type="text" name="salida" id="fsalida">';



			$form .= '<div class="cmsmasters_row_margin">
			<div class="cmsmasters_column one_half">';
			
			$form .= '<label>'.$campos_form['adultos'].'</label>';
			$form .= '<select name="adultos" id="fadultos">';
		    $form .= '<option value="">'.__("Select", "dw_quetzal").'</option>';
		    $form .= '<option value="1">1</option>';
		    $form .= '<option value="2">2</option>';
		    $form .= '<option value="3">3</option>';
		    $form .= '<option value="4">4</option>';
		    $form .= '<option value="5">5</option>';
		    $form .= '<option value="6">6</option>';
		    $form .= '<option value="7">7</option>';
		    $form .= '<option value="8">8</option>';
			$form .= '</select>';


			$form .= '</div><div class="cmsmasters_column one_half">';


			if( $dataPost['max_children'] == ''){ /* $dataPost['max_children'] > 0*/
				$dataPost['max_children'] = 2;
			}
				
			$form .= '<label>'.$campos_form['ninos'].'</label>';
			$form .= '<select name="ninos" id="fninos">';
		    $form .= '<option value="">'.__("Select", "dw_quetzal").'</option>';
		    $form .= '<option value="0">0</option>';
		    for ($i=1; $i <= $dataPost['max_children']; $i++) { 
		    	$form .= '<option value="'.$i.'">'.$i.'</option>';
		    }
		    $form .= '</select>';
			    
			

			$form .= '<div id="divfinfants">';
				$form .= '<label>'.$campos_form['infantes'].'</label>';
				$form .= '<select name="infantes" id="finfantes">';
				$form .= '</select>';
			$form .= '</div>';

			$form .= '</div>';

			$form .= '</div>';


		    $sel_tipo = '<label>'.$campos_form['tipo'].'</label>';
		    $sel_tipo .= '<select class="getfield" name="tipo" id="ftipo" data-accion="cuarto">';
		    $sel_tipo .= '<option value="">'.__("Select", "dw_quetzal").'</option>';
		    foreach ($data as $id => $servicio) {
		    	$sel_tipo .= '<option value="'.$id.'">'.$servicio['servicio'].'</option>';
		    }
		    $sel_tipo .= '</select>';

		    if( count($data) == 1 ){
		    	$sel_tipo = '<input class="getfield" data-accion="cuarto" type="hidden" name="tipo" id="ftipo" value="0">';
		    	$sel_tipo .= '
		    	<script type="text/javascript">
					var unservicio = true;
		    	</script>';
		    }
			$form .=  $sel_tipo;

			$form .= '<div class="select_cuarto"></div>';

			$form .= '<div class="form_ajax"><img src="'.DW_URL.'/ajax.gif" ></div>';

			$form .= '<div class="alerts_form"></div>';

			$form .= '<input type="submit" id="btn_continuar" data-accion="Selección Lodge" value="'.$campos_form['btn_continuar'].'">';

			$form .= '</form>';

			$form .= '</div>';

			$form .= '<p>&nbsp</p>';

			//return $form;
		}

		if(get_post_type() == 'project' and 
			(
				!empty($dataPost['price_per_person']) or 
				!empty($dataPost['price_for_the_group'])
			)
		){


			$min_p = 1;
			$max_p = 8;


			if($dataPost['minimum_of_people']){
				$min_p = $dataPost['minimum_of_people'];
			}
			if($dataPost['maximum_of_people']){
				$max_p = $dataPost['maximum_of_people'];
			}

			if($dataPost['enable_price_by_group_of_people']){
				$min_p = $dataPost['min_people'];
				$max_p = $dataPost['max_people'];
			}

			if($dataPost['enable_additional_people']){
				$max_p = $dataPost['maximum_of_additional_people'];
			}

			$form = '<div class="formulario_reserva">';

			$form .= '<h3>' . __("BOOK NOW", "dw_quetzal") . '</h3>';

			$form .= '<form id="form_reserva">';

			$form .= '<input type="hidden" name="post_id" id="fpost_id" value="'.get_the_ID().'">';
			$form .= '<input type="hidden" name="action" id="faction" value="agregar_tour">';

			$form .= '<label>'.$campos_form_t['llegada'].'</label>';
			$form .= '<input class="date" type="text" name="llegada" id="fllegada">';


			
			$form .= '<label>'.$campos_form_t['personas'].'</label>';
			$form .= '<select name="personas" id="fpersonas">';

		    $form .= '<option value="">'.__("Select", "dw_quetzal").'</option>';

		    for ($i = $min_p; $i <= $max_p; $i++) { 
		    	$form .= '<option value="'.$i.'">'.$i.'</option>';
		    }

			$form .= '</select>';


			if( ! empty($dataPost['price_per_transport']) ){

				$form .= '<label>'.$campos_form_t['transporte'].'</label>';
				$form .= '<select name="transporte" id="ftransporte">';
				    $form .= '<option value="">'.__("Select", "dw_quetzal").'</option>';
				    $form .= '<option value="'.$labels['si'].'">'.$labels['si'].'</option>';
				    $form .= '<option value="'.$labels['no'].'">'.$labels['no'].'</option>';
				$form .= '</select>';

			}

			if( ! empty($dataPost['lunch_price']) ){

				$form .= '<label>'.$campos_form_t['almuerzo'].'</label>';
				$form .= '<select name="almuerzo" id="falmuerzo">';
				    $form .= '<option value="">'.__("Select", "dw_quetzal").'</option>';
				    $form .= '<option value="'.$labels['si'].'">'.$labels['si'].'</option>';
				    $form .= '<option value="'.$labels['no'].'">'.$labels['no'].'</option>';
				$form .= '</select>';

			}

			$select_private = NULL;

			if( ! empty($dataPost['price_for_private']) ){
				$select_private = 'privado';
			}

			if( ! empty($dataPost['enable_price_by_group_of_people']) and ! empty($dataPost['price_for_private_group']) ){
				$select_private = 'privado';
			}


			if($select_private != NULL){
				$form .= '<label>'.$campos_form_t['privado'].'</label>';
				$form .= '<select name="'.$select_private.'" id="f'.$select_private.'">';
				    $form .= '<option value="">'.__("Select", "dw_quetzal").'</option>';
				    $form .= '<option value="'.$labels['si'].'">'.$labels['si'].'</option>';
				    $form .= '<option value="'.$labels['no'].'">'.$labels['no'].'</option>';
				$form .= '</select>';

			}



			$form .= '<div class="form_ajax"><img src="'.DW_URL.'/ajax.gif" ></div>';

			$form .= '<div class="alerts_form"></div>';

			$form .= '<input type="submit" id="btn_continuar" data-accion="Selección Tour" value="'.$campos_form['btn_continuar'].'">';

			$form .= '</form>';

			$form .= '</div>';

			//return $form;
		}

		if( ( get_post_type() == 'lodge' or get_post_type() == 'project' ) and $form == false){

			$form = do_shortcode('[cmsmasters_button button_link="'.get_permalink($id_page_contacto).'" button_target="self" button_text_align="center" button_style="cmsmasters_but_bg_expand_diag" button_font_weight="normal" button_font_style="normal" button_icon="cmsmasters-icon-ok" button_border_style="solid" button_border_width="0" button_bg_color="#de8125" button_bg_color_h="#acd52c" button_text_color="#ffffff" animation_delay="0" classes="booknow"]' . __("CONTACT", "dw_quetzal") . '[/cmsmasters_button]');
		
		}


		return $form;
	}

	add_shortcode( 'form_reserva', 'fn_form_reserva' );

#################################

# Detalle de reserva

	function fn_detalle_reserva()
	{
		global $campos_form, $campos_form_f, $labels, $id_page_terms;

		$echo = '';

		if( !empty($_SESSION["servicio"]) ){

	        $echo .= '<div class="reservation-detail reservation-detail-block">';
	            
	          
	            if( isset($_SESSION["servicio"]['lodged']) ){
	            	
	            	$temporadaActivadas = array();

		            foreach ($_SESSION["servicio"]['lodged'] as $key => $servicio) {
		            	$echo .= HtmlLodges( $servicio );
		            }

	            }

	            if( isset($_SESSION["servicio"]['tour']) ){
	            	
		            foreach ($_SESSION["servicio"]['tour'] as $key => $tour) {
		            	$echo .= HtmlTours( $tour );
		            }

	            }

	            $total_pagar = 0;
	            foreach ($_SESSION['precio'] as $key => $total) {
	            	$total_pagar = $total_pagar + $total;
	            }
	            unset($_SESSION['precio']);

	            $echo .= '
				<div class="total_pagar">'.$labels['total_pagar'].': <b>$'.$total_pagar.'</b></div> 
	        </div>
	        
	        <hr />

	        <div class="msg-validacion alert alert-danger"></div>

	        <form id="form_reserva" class="form_checkout">

	        	<div class="cmsmasters_row_margin">

	        		<div class="cmsmasters_column one_half">

			            <input type="hidden" name="action" value="reserva">
			            <div class="personal-data-container">
			                <h4  class="reservation-detail-title">'.$labels['personal_datos'].'</h4>
			                <table width="100%" class="table_card">
			                    <tr>
			                        <td><label>'.$campos_form_f['nombre'].'</label></td>
			                        <td><input class="field-text" type="text" name="nombre"></td>
			                    </tr>
			                    <tr>
			                        <td><label>'.$campos_form_f['correo'].'</label></td>
			                        <td><input class="field-text" type="email" name="correo"></td>
			                    </tr>
			                    <tr>
			                        <td><label>'.$campos_form_f['telefono'].'</label></td>
			                        <td><input class="field-text" type="text" name="telefono"></td>
			                    </tr>

			                </table>
			            </div>

	        		</div>

	        		<div class="cmsmasters_column one_half">


			            <div class="card-data">
			                <h4  class="reservation-detail-title">'.$labels['tarjeta_datos'].'</h4>
			                <table width="100%" class="table_card">
			                    <tr>
			                        <td><label>'.$campos_form_f['tipo_tar'].'</label></td>
			                        <td><select name="tipo_tar">
			                            <option value="">--</option>
			                            <option value="Visa">Visa</option>
			                            <option value="Master Card">Master Card</option>
			                            <option value="American Express">American Express</option>
			                            <option value="Discover">Discover</option>
			                            <option value="JCB">JCB</option>
			                            <option value="Diners Club">Diners Club</option>
			                        </select></td>
			                    </tr>
			                    <tr>
			                        <td><label>'.$campos_form_f['nume_tar'].'</label></td>
			                        <td><input class="field-text" type="text" name="nume_tar" placeholder="0000-0000-0000-0000"></td>
			                    </tr>
			                    <tr>
			                        <td><label>'.$campos_form_f['nomb_tar'].'</label></td>
			                        <td><input class="field-text" type="text" name="nomb_tar"></td>
			                    </tr>
			                    <tr>
			                        <td><label>'.$campos_form_f['expi_tar'].'</label></td>
			                        <td>

										<table class="" cellpadding="0">
											<tr>
												<td class="first_td">
													
							                        <select name="expi_tar_m">
							                            <option value="">--</option>
							                            <option value="01">01</option>
							                            <option value="02">02</option>
							                            <option value="03">03</option>
							                            <option value="04">04</option>
							                            <option value="05">05</option>
							                            <option value="06">06</option>
							                            <option value="07">07</option>
							                            <option value="08">08</option>
							                            <option value="09">09</option>
							                            <option value="10">10</option>
							                            <option value="11">11</option>
							                            <option value="12">12</option>
							                        </select>

												</td>
												<td>
													
													<select name="expi_tar_a">
													    <option value="">--</option>';

													        for($i=0;$i<=20;$i++){
													            $ano = date('Y')+$i;
													            $ano_y = date('y')+$i;
													            $echo .= '<option value="'.$ano_y.'">'.$ano.'</option>';
													        }

													
								$echo .= '			</select>

												</td>
											</tr>
										</table>

			                        </td>
			                    </tr>
			                    <tr>
			                        <td><label>'.$campos_form_f['code_tar'].'</label></td>
			                        <td><input class="field-text" type="text" name="code_tar" placeholder="000"></td>
			                    </tr>

			                    <tr>
			                        <td colspan="2">
			                            <div class="seguridad-tarjetas">
			                                <script language="JavaScript" type="text/javascript">TrustLogo("https://www.quetzals.net/comodo_secure_seal_100x85_transp.png", "CL1", "none");</script>
			                                <!--<a target="_blank" href="https://ssl.comodo.com" id="comodoTL">Comodo SSL</a>-->
			                                <img src="'.DW_URL.'/cards/visa.gif">
			                                <img src="'.DW_URL.'/cards/mastercard.gif">
			                                <img src="'.DW_URL.'/cards/amex.gif">
			                                <img src="'.DW_URL.'/cards/discover.gif">
			                                <img src="'.DW_URL.'/cards/jcb.gif" >
			                                <img src="'.DW_URL.'/cards/dinersclub.gif">
			                            </div>

			                        </td>
			                    </tr>
			                    <tr>
			                    	
									<td colspan="2">
									
							            <div class="input_terms">
							            	<input type="checkbox" name="terms" id="terms"> <label for="terms">'.$campos_form_f['terms'].' <a target="_blank" href="'.get_permalink($id_page_terms).'">'.get_the_title($id_page_terms).'</a></label>
							            </div>

										<div class="form_ajax"><img src="'.DW_URL.'/ajax.gif" ></div>
										<div class="alerts_form"></div>

							            <input type="submit" id="btn_continuar" data-accion="Reservar" value="'.__('Reserve', "dw_quetzal").'">

									</td>

			                    </tr>
			                </table>
			            </div>

			        </div>


	        	</div>
	            
	        </form> ';

	     
	    }else{
	        $echo = '<br><br><br><br><center>'.__('No data to display', "dw_quetzal").'</center><br><br><br><br><br>';
	    }

	    return $echo;
	}
	add_shortcode( 'detalle_reserva', 'fn_detalle_reserva' );

#################################



#################################

# Lista de tours y lodge

	function fn_tours()
	{
		global $wpdb, $labels;

		$id_region = get_post_meta(get_the_ID(), 'regions', true);

		if(get_post_type( get_the_ID() ) == 'region'){
			$id_region = get_the_ID();
		}

		$args = array(
			'post_type' => 'project'
		);

		if( !empty($id_region) ){
			$args['meta_key'] = 'regions';
			$args['meta_value'] = $id_region;
		}

		$query = new WP_Query( $args );

        if ( $query->have_posts() ) {

        	echo '<h2>'.$labels['htour'].'</h2>';

        	echo '<div class="widget_custom_projects_entries_slides owl-carousel_ shortcode_tours">';

            while ( $query->have_posts() ) {

                $query->the_post();
                $post = $query->post;

				$cmsmasters_project_link_url = get_post_meta($post->ID, 'cmsmasters_project_link_url', true);

				$cmsmasters_project_link_redirect = get_post_meta($post->ID, 'cmsmasters_project_link_redirect', true);

				$cmsmasters_project_link_target = get_post_meta($post->ID, 'cmsmasters_project_link_target', true);

				$cmsmasters_project_icon = get_post_meta($post->ID, 'cmsmasters_project_icon', true);

				$cmsmasters_project_duration = get_post_meta($post->ID, 'cmsmasters_project_duration', true);

				$cmsmasters_project_price = get_post_meta($post->ID, 'cmsmasters_project_price', true);

				echo '<div class="cmsmasters_slider_project">' . 
					'<div class="cmsmasters_slider_project_outer">' . 
						'<div class="cmsmasters_slider_project_inner">' . 
							'<div class="project_outer_image_wrap">' . 
								'<div class="project_outer_image_wrap_meta entry-meta">';

									$cmsmasters_project_icon ? travel_time_project_icon($cmsmasters_project_icon) : '';

									$cmsmasters_project_price ? travel_time_project_price($cmsmasters_project_price, 'page') : '';

									echo '<div class="project_outer_image_wrap_meta_bottom entry-meta">';
									
									//travel_time_get_slider_post_category($post->ID, 'pj-categs', 'project');

									travel_time_slider_post_heading($post->ID, 'project', 'h3', $cmsmasters_project_link_redirect, $cmsmasters_project_link_url, true, $cmsmasters_project_link_target);
									
									echo '</div>' . 

								'</div>';
								
								travel_time_thumb_rollover($post->ID, 'cmsmasters-tour-thumb', false, true, false, false, false, false, false, false, true, $cmsmasters_project_link_redirect, $cmsmasters_project_link_url);
							echo '</div>' . 

							'<div class="cmsmasters_portfolio_project_footer">';
							
								if (CMSMASTERS_RATING) {
									travel_time_custom_rating($post->ID, 'page');
								}
															
								travel_time_project_duration($cmsmasters_project_duration, 'page');

							echo '</div>' . 
						'</div>' . 
					'</div>' . 
				'</div>';

            }

            echo '</div>';

        }

	}
	add_shortcode( 'tours', 'fn_tours' );

	function fn_lodges()
	{
		global $wpdb, $labels;

		$id_region = get_post_meta(get_the_ID(), 'regions', true);

		if(get_post_type( get_the_ID() ) == 'region'){
			$id_region['ID'] = get_the_ID();
		}

		$sql = "
			    SELECT
			        $wpdb->posts.post_title,
			        $wpdb->posts.ID
			    FROM
			        $wpdb->posts

			    WHERE
			        $wpdb->posts.post_type = 'lodge'
			        AND $wpdb->posts.post_status = 'publish'
			    LIMIT 3
			";

		$titulo = $labels['hlodge'];

		if( !empty($id_region) ){
			$sql = "
				    SELECT
				        $wpdb->posts.post_title,
				        $wpdb->posts.ID
				    FROM
				        $wpdb->posts,
				        $wpdb->postmeta AS postmeta

				    WHERE
				        $wpdb->posts.post_type = 'lodge'
				        AND $wpdb->posts.post_status = 'publish'
				        AND $wpdb->posts.ID != ".get_the_ID()."
				        AND $wpdb->posts.ID = postmeta.post_id
				        AND (postmeta.meta_key = 'regions' AND postmeta.meta_value = ".$id_region['ID'].")
				";
			$titulo = $labels['Hlista_lodge'] . ' ' . get_the_title( $id_region['ID'] );
		}

		$query = $wpdb->get_results( $sql );

        if ( ! empty($query) ) {

        	echo '<h2>' . $titulo .'</h2>';

        	echo '<div class="lista_lodges">';

            foreach ( $query AS $row ) {

            	$img = get_the_post_thumbnail_url( $row->ID, 'medium' );
   
				echo '<div class="lodge">';
					echo '<div class="divimg" style="background-image: url('.$img.')"></div>';
					echo '<a href="'.get_the_permalink( $row->ID ).'">' . $row->post_title . '</a>';
				echo '</div>';

            }

            echo '</div>';

        }

		#}

	}
	add_shortcode( 'lodges', 'fn_lodges' );






	function fn_page_lodges()
	{
		global $wpdb;

		$query = $wpdb->get_results(
		"
		    SELECT
		        $wpdb->posts.post_title,
		        $wpdb->posts.ID
		    FROM
		        $wpdb->posts

		    WHERE
		        $wpdb->posts.post_type = 'lodge'
		        AND $wpdb->posts.post_status = 'publish'
		        "
		);

		$echo = '';

       // if ( ! empty($query) ) {

        	$echo .= '<div class="lista_lodges">';

            foreach ( $query AS $row ) {

            	$img = get_the_post_thumbnail_url( $row->ID, 'medium' );
   
				$echo .= '<div class="lodge page">';
					$echo .= '<div class="divimg" style="background-image: url('.$img.')"></div>';
					$echo .= '<a href="'.get_the_permalink( $row->ID ).'">' . $row->post_title . '</a>';
				$echo .= '</div>';


            }

            $echo .= '</div>';

        //}

		return $echo;

	}
	add_shortcode( 'page_lodges', 'fn_page_lodges' );




	function fn_page_regions()
	{
		global $wpdb;

		$query = $wpdb->get_results(
		"
		    SELECT
		        $wpdb->posts.post_title,
		        $wpdb->posts.ID
		    FROM
		        $wpdb->posts

		    WHERE
		        $wpdb->posts.post_type = 'region'
		        AND $wpdb->posts.post_status = 'publish'
		        "
		);

		$echo = '';

       // if ( ! empty($query) ) {

        	$echo .= '<div class="lista_lodges">';

            foreach ( $query AS $row ) {

            	$img = get_the_post_thumbnail_url( $row->ID, 'medium' );
   
				$echo .= '<div class="lodge page">';
					$echo .= '<div class="divimg" style="background-image: url('.$img.')"></div>';
					$echo .= '<a href="'.get_the_permalink( $row->ID ).'">' . $row->post_title . '</a>';
				$echo .= '</div>';


            }

            $echo .= '</div>';

        //}
            
		return $echo;

	}
	add_shortcode( 'page_regions', 'fn_page_regions' );

#################################