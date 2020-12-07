<?php
    # Pantalla de inicio

	function inicio()
	{
		global $wpdb;

		$sql = 'SELECT * FROM reservas ORDER BY id DESC';
		$results = $wpdb->get_results( $sql, OBJECT );

		echo '<h2>Lista de pedidos</h2>';

		echo '
		<div class="wrap">
		    <table class="wp-list-table widefat fixed striped posts reservas_admin">
		        <thead>
		            <tr>
		                <th width="70">Estado</th>
		                <th>Fecha de la solicitud</th>
		                <th>Cliente</th>
		                <th>Cantidad de Productos</th>
		                <th>Opciones</th>
		            </tr>
		        </thead>
		        <tbody id="the-list">';

		// var_dump($results);
		
		if(empty($results)){
		    echo '<tr><td colspan="5"><center>No hay registros</center></td></tr>';
		}

		foreach ($results as $key => $reg) {
			
			// $cliente = (Object)unserialize($reg->contacto);
			// $pedidos = unserialize($reg->productos);

			$fecha_pedido = utf8_encode( strftime("%A %d, %B %Y", strtotime ($reg->fecha_registro)) );
			

			$html_pedidos = '';
			/* foreach ($pedidos as $key => $pedido) {
				foreach ($pedido as $key => $servicio) {
					$titulo_serv = get_the_title( $servicio['post_id'] );
					//var_export($servicio);
					$html_pedidos .= $titulo_serv . '<br>';
				}
			} */
	

	        $estado = '';
	        switch ($reg->estado) {
	            case 1:
	                $estado =  '<p style="color: #10ad16;">Nuevo</p>';
	            break;
	            case 2:
	                $estado =  '<p style="color: #5c94dc;">En Proceso</p>';
                break;
                case 3:
	                $estado =  '<p style="color: #5c94dc;">Terminado</p>';
	            break;
	        }

			echo '
			<tr>
				<td>'.$estado.'</td>
				<td>'.$fecha_pedido.'</td>
				<td>'.$reg->contacto.'</td>
				<td>'.$reg->productos.'</td>
				<td>
					<a target="_blank" href="/wp-admin/admin.php?page=dw_detalle&id='.$reg->id.'">Ver</a> :: 
					<a href="#" onclick="return confirm(\'¿Eliminar registro?\')">Eliminar</a>
				</td>
			</tr>';

		}
	}

    #################################
    
    # Pantalla de Nuevas Ordenes

    function new_orders()
    {
		global $wpdb;

		$sql = 'SELECT * FROM reservas WHERE estado = 1 ORDER BY id DESC';
		$results = $wpdb->get_results( $sql, OBJECT );

		echo '<h2>Lista de pedidos</h2>';

		echo '
		<div class="wrap">
		    <table class="wp-list-table widefat fixed striped posts reservas_admin">
		        <thead>
		            <tr>
		                <th width="70">Estado</th>
		                <th>Fecha de la solicitud</th>
		                <th>Cliente</th>
		                <th>Cantidad de Productos</th>
		                <th>Costo Estimado</th>
		            </tr>
		        </thead>
		        <tbody id="the-list">';

		if(empty($results)){
		    echo '<tr><td colspan="5"><center>No hay registros</center></td></tr>';
		}

		foreach ($results as $key => $reg) {
			
			$cliente = (Object)unserialize($reg->contacto);
			$pedidos = unserialize($reg->productos);

			$fecha_pedido = utf8_encode( strftime("%A %d, %B %Y", strtotime ($reg->fecha_registro)) );
			

			$html_pedidos = '';
			foreach ($pedidos as $key => $pedido) {
				foreach ($pedido as $key => $servicio) {
					$titulo_serv = get_the_title( $servicio['post_id'] );
					//var_export($servicio);
					$html_pedidos .= $titulo_serv . '<br>';
				}
			}
	

	        $estado = '';
	        switch ($reg->estado) {
	            case 1:
	                $estado =  '<p style="color: #10ad16;">Nuevo</p>';
	            break;
	            case 2:
	                $estado =  '<p style="color: #5c94dc;">En Proceso</p>';
                break;
                case 3:
	                $estado =  '<p style="color: #5c94dc;">Terminado</p>';
	            break;
	        }

			echo '
			<tr>
				<td>'.$estado.'</td>
				<td>'.$fecha_pedido.'</td>
				<td>'.$cliente->nombre.'</td>
				<td>'.$html_pedidos.'</td>
				<td>
					<a target="_blank" href="/wp-admin/admin.php?page=dw_detalle&id='.$reg->id.'">Ver</a> :: 
					<a href="#" onclick="return confirm(\'¿Eliminar registro?\')">Eliminar</a>
				</td>
			</tr>';

		}
	}

    #################################

    # Pantalla de ordenes en proceso

    function orders_process()
    {
		global $wpdb;

		$sql = 'SELECT * FROM reservas WHERE estado = 2 ORDER BY id DESC';
		$results = $wpdb->get_results( $sql, OBJECT );

		echo '<h2>Lista de pedidos</h2>';

		echo '
		<div class="wrap">
		    <table class="wp-list-table widefat fixed striped posts reservas_admin">
		        <thead>
		            <tr>
		                <th width="70">Estado</th>
		                <th>Fecha de la solicitud</th>
		                <th>Cliente</th>
		                <th>Cantidad de Productos</th>
		                <th>Costo Estimado</th>
		            </tr>
		        </thead>
		        <tbody id="the-list">';

		if(empty($results)){
		    echo '<tr><td colspan="5"><center>No hay registros</center></td></tr>';
		}

		foreach ($results as $key => $reg) {
			
			$cliente = (Object)unserialize($reg->contacto);
			$pedidos = unserialize($reg->productos);

			$fecha_pedido = utf8_encode( strftime("%A %d, %B %Y", strtotime ($reg->fecha_registro)) );
			

			$html_pedidos = '';
			foreach ($pedidos as $key => $pedido) {
				foreach ($pedido as $key => $servicio) {
					$titulo_serv = get_the_title( $servicio['post_id'] );
					//var_export($servicio);
					$html_pedidos .= $titulo_serv . '<br>';
				}
			}
	

	        $estado = '';
	        switch ($reg->estado) {
	            case 1:
	                $estado =  '<p style="color: #10ad16;">Nuevo</p>';
	            break;
	            case 2:
	                $estado =  '<p style="color: #5c94dc;">En Proceso</p>';
                break;
                case 3:
	                $estado =  '<p style="color: #5c94dc;">Terminado</p>';
	            break;
	        }

			echo '
			<tr>
				<td>'.$estado.'</td>
				<td>'.$fecha_pedido.'</td>
				<td>'.$cliente->nombre.'</td>
				<td>'.$html_pedidos.'</td>
				<td>
					<a target="_blank" href="/wp-admin/admin.php?page=dw_detalle&id='.$reg->id.'">Ver</a> :: 
					<a href="#" onclick="return confirm(\'¿Eliminar registro?\')">Eliminar</a>
				</td>
			</tr>';

		}
	}

    #################################

    # Pantalla de ordenes finalizadas

    function orders_finished()
    {
		global $wpdb;

		$sql = 'SELECT * FROM reservas WHERE estado = 3 ORDER BY id DESC';
		$results = $wpdb->get_results( $sql, OBJECT );

		echo '<h2>Lista de pedidos</h2>';

		echo '
		<div class="wrap">
		    <table class="wp-list-table widefat fixed striped posts reservas_admin">
		        <thead>
		            <tr>
		                <th width="70">Estado</th>
		                <th>Fecha de la solicitud</th>
		                <th>Cliente</th>
		                <th>Cantidad de Productos</th>
		                <th>Costo Estimado</th>
		            </tr>
		        </thead>
		        <tbody id="the-list">';

		if(empty($results)){
		    echo '<tr><td colspan="5"><center>No hay registros</center></td></tr>';
		}

		foreach ($results as $key => $reg) {
			
			$cliente = (Object)unserialize($reg->contacto);
			$pedidos = unserialize($reg->productos);

			$fecha_pedido = utf8_encode( strftime("%A %d, %B %Y", strtotime ($reg->fecha_registro)) );
			

			$html_pedidos = '';
			foreach ($pedidos as $key => $pedido) {
				foreach ($pedido as $key => $servicio) {
					$titulo_serv = get_the_title( $servicio['post_id'] );
					//var_export($servicio);
					$html_pedidos .= $titulo_serv . '<br>';
				}
			}
	

	        $estado = '';
	        switch ($reg->estado) {
	            case 1:
	                $estado =  '<p style="color: #10ad16;">Nuevo</p>';
	            break;
	            case 2:
	                $estado =  '<p style="color: #5c94dc;">En Proceso</p>';
                break;
                case 3:
	                $estado =  '<p style="color: #5c94dc;">Terminado</p>';
	            break;
	        }

			echo '
			<tr>
				<td>'.$estado.'</td>
				<td>'.$fecha_pedido.'</td>
				<td>'.$cliente->nombre.'</td>
				<td>'.$html_pedidos.'</td>
				<td>
					<a target="_blank" href="/wp-admin/admin.php?page=dw_detalle&id='.$reg->id.'">Ver</a> :: 
					<a href="#" onclick="return confirm(\'¿Eliminar registro?\')">Eliminar</a>
				</td>
			</tr>';

		}
	}

    #################################