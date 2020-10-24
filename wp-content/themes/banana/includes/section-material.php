
<?php if( have_rows('anadir_material') ){
    $request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
	if( ! empty( $request ) ) {
		$body = wp_remote_retrieve_body($request);
		$data = json_decode($body, true);
	}
    $rows = get_field('anadir_material');

    $objDimensiones = get_terms( array(
        'taxonomy' => 'dimension',
        'hide_empty' => false,
    ) );
    $allDimensiones = WP_Term::to_array($objDimensiones);
    $dimensiones = array();
    foreach ($allDimensiones as $key => $value) {
        $dimensiones[$key]=$value['name'];
    }
    var_dump($dimensiones);

    foreach( $rows as $row ) {
        if(! $row['estado_del_producto']):
            continue;
        endif;
        if($row['elegir_area'] == 'Taller' ){
            echo '<div id="material">';
                echo '<p id="title-material" value="'.$row['elegir_meterial_taller'].'">'.$data["taller"]["productos"][$row['elegir_meterial_taller']].'</p>';
                echo '<p id="sub-title-material" value="'.$row['elegir_tipo'].'">'.$data["taller"]["tipos"][$row['elegir_meterial_taller']][$row['elegir_tipo']].'</p>';
                echo '<p id="desc">'.$row["descripcion_breve"].'</p>';
                echo '<div id="select-container">';
                    echo '<div id="dimensions"  class="form-group">';
                        echo '<select id="custom-select" class="form-control">';

                        echo '</select>';
                    echo '</div>';
                    echo '<div id="quantity" class="form-group">';
                        echo '<select id="custom-select" class="form-control">';
                        echo '</select>';
                    echo '</div>';
                echo '</div>';
            echo '</div>';
        }
        if($row['elegir_area'] == 'Impresión' ){
            echo '<div id="material">';
                echo '<p id="title-material" value="'.$row['elegir_material_impresion'].'">'.$data["impresion"]["productos"][$row['elegir_material_impresion']].'</p>';
                echo '<p id="sub-title-material" value="'.$row['elegir_tipo_impresion'].'">'.$data["impresion"]["tipos"][$row['elegir_material_impresion']][$row['elegir_tipo_impresion']]['nombre'].'</p>';
                echo '<p id="desc">'.$row["descripcion_breve"].'</p>';
                echo '<div id="select-container">';
                    echo '<div id="dimensions" class="form-group">';
                        echo '<select id="custom-select" class="form-control">';
                            
                        echo '</select>';
                    echo '</div>';
                    echo '<div id="quantity" class="form-group">';
                        echo '<select id="custom-select" class="form-control">';
                        echo '</select>';
                    echo '</div>';
                echo '</div>';
            echo '</div>';
        }
    }
}?>
<!-- <div id="material">
    <p id="title-material">COUCHE 250 g</p>
    <p id="desc">Ban y Ana son dos jóvenes creativos, de trato amable y respetuoso con el cliente. Son personas de gran confianza, transparencia y compromiso. </p>
    <div id="select-container">
        <div id="dimensions" class="form-group">
            <select id="custom-select" class="form-control" id="">
                <option value="hide" disabled selected>DIMENSION</option>
                <option>1/4 carta (4.25" x 5.5")</option>
                <option>1/3 carta (3.6" x 8.5")</option>
                <option>1/2 carta (5.5" x 8.5")</option>
            </select>
        </div>
        <div id="quantity" class="form-group">
            <select id="custom-select" class="form-control" id="">
                <option value="hide" disabled selected>CANTIDAD</option>
                <option>25</option>
                <option>50</option>
                <option>75</option>
            </select>
        </div>
    </div>
    <p id="title-cost">COSTO ESTIMADO</p>
    <p id="cost">10 000</p>
    <div class="btn-container">
        <button type="submit" class="btn btn-primary">AÑADIR CARRITO</button>
    </div>
    <hr class="solid">
</div> -->