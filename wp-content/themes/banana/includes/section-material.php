
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

    $objCantidades = get_terms( array(
        'taxonomy' => 'cantidad',
        'hide_empty' => false,
    ) );
    
    // var_dump($objCantidades);

    foreach( $rows as $keyrow => $row) {
        if(! $row['estado_del_producto']):
            continue;
        endif;
        // var_dump($row);
        if($row['elegir_area'] == 'Taller' ){
            echo '<div id="material_'.$keyrow.'" class="material">';
                echo '<p class="title-material" value="'.$row['elegir_meterial_taller'].'">'.$data["taller"]["productos"][$row['elegir_meterial_taller']].'</p>';
                echo '<p class="sub-title-material" value="'.$row['elegir_tipo'].'">'.$data["taller"]["tipos"][$row['elegir_meterial_taller']][$row['elegir_tipo']].'</p>';
                echo '<p class="desc">'.$row["descripcion_breve"].'</p>';
                echo '<div class="select-container">';
                    echo '<div class="form-group dimensions">';
                        echo '<select class="form-control selectDimensiones calcularPrecio">';
                            echo '<option value="hide" disabled selected>DIMENSION</option>';
                            foreach ($objDimensiones as $key => $obj) {
                                foreach ($row["elegir_dimensiones"] as $key => $arr) {
                                    if($obj->term_id == $row["elegir_dimensiones"][$key]){
                                        $dimension = explode("x", $obj->name);
                                        echo '<option value="'.$obj->name.'">'.$dimension[0].'cm x '.$dimension[1].'cm</option>';
                                    }
                                }
                            }
                        echo '</select>';
                    echo '</div>';
                    echo '<div class="form-group quantity">';
                        echo '<select class="form-control selectQuantity calcularPrecio">';
                            echo '<option value="hide" disabled selected>CANTIDAD</option>';
                            foreach ($objCantidades as $key => $obj) {
                                foreach ($row["elegir_cantidades"] as $key => $arr) {
                                    if($obj->term_id == $row["elegir_cantidades"][$key]){
                                        echo '<option value="'.$obj->name.'">'.$obj->name.'</option>';
                                    }
                                }
                            }
                        echo '</select>';
                    echo '</div>';
                echo '</div>';
                echo'<p class="title-cost">COSTO ESTIMADO</p>';
                echo '<p class="cost">&#8353 0</p>';
                echo '<div class="btn-container">';
                    echo '<button type="submit" id="btn_continuar_'.$keyrow.'" class="btn btn_disable btn-primary">AÑADIR CARRITO</button>';
                echo '</div>';
                echo '<hr class="solid">';
            echo '</div>';
        }
        if($row['elegir_area'] == 'Impresión' ){
            echo '<div id="material_'.$keyrow.'" class="material">';
                echo '<p class="title-material" value="'.$row['elegir_material_impresion'].'">'.$data["impresion"]["productos"][$row['elegir_material_impresion']].'</p>';
                echo '<p class="sub-title-material" value="'.$row['elegir_tipo_impresion'].'">'.$data["impresion"]["tipos"][$row['elegir_material_impresion']][$row['elegir_tipo_impresion']]['nombre'].'</p>';
                echo '<p class="desc">'.$row["descripcion_breve"].'</p>';
                echo '<div class="select-container">';
                    echo '<div class="dimensions form-group">';
                        echo '<select class="form-control selectDimensiones calcularPrecio">';
                            echo '<option disabled selected>DIMENSION</option>';
                            foreach ($objDimensiones as $key => $obj) {
                                foreach ($row["elegir_dimensiones"] as $key => $arr) {
                                    if($obj->term_id == $row["elegir_dimensiones"][$key]){
                                        $dimension = explode("x", $obj->name);
                                        echo '<option value="'.$obj->name.'">'.$dimension[0].'cm x '.$dimension[1].'cm</option>';
                                    }
                                }
                            }
                        echo '</select>';
                    echo '</div>';
                    echo '<div class="quantity form-group">';
                        echo '<select class="form-control selectQuantity calcularPrecio">';
                            echo '<option disabled selected>CANTIDAD</option>';
                            foreach ($objCantidades as $key => $obj) {
                                foreach ($row["elegir_cantidades"] as $key => $arr) {
                                    if($obj->term_id == $row["elegir_cantidades"][$key]){
                                        echo '<option value="'.$obj->name.'">'.$obj->name.'</option>';
                                    }
                                }
                            }
                        echo '</select>';
                    echo '</div>';
                echo '</div>';
                echo'<p class="title-cost">COSTO ESTIMADO</p>';
                echo '<p class="cost">&#8353 0</p>';
                echo '<div class="btn-container">';
                    echo '<button type="submit" id="btn_continuar_'.$keyrow.'" class="btn btn_disable btn-primary">AÑADIR CARRITO</button>';
                echo '</div>';
                echo '<hr class="solid">';
            echo '</div>';
        }
    }
}
?>
<script>

    $(document).on('change', '.calcularPrecio', function(e) {
        cargarPrecio(jQuery(this));
   });

    function cargarPrecio($this,$id,$dimension,$quantity){
        var $post_ID = jQuery("#post_ID").val();
        var parent = $this.closest("[id^='material_']");
        var $id = parent.attr('id');

        var cost = parent.find('.cost');

        var $dimension = parent.find(".selectDimensiones").val();
        var $quantity = parent.find(".selectQuantity").val();

        if( $dimension == null || $quantity == null){
            return false;
        }
        cost.html('<div class="spinner-border spinner-border-sm" role="status"> <span class="sr-only">Loading...</span></div>');
        $row = $id.split("_");
        var btn_name = "#btn_continuar_" + $row[1] ;
        var $btn = jQuery(btn_name);
        $btn.removeClass( "btn_enable" );
        $btn.addClass( "btn_disable" );
        //console.log(btn_name);

        jQuery.ajax({
            type: "post",
            url: '/wp-admin/admin-ajax.php',
            data: "action=calc_function&id_row=" + $row[1] +
            "&post_ID=" + $post_ID +
            "&dimension="+ $dimension +
            "&quantity=" + $quantity,
            success: function(result) {
            $btn.removeClass( "btn_disable" );
            $btn.addClass( "btn_enable" );
            cost.empty();
            //console.log(result);
            cost.html(result);
            }
        });
   }

    $('button.btn-primary').click(function(e){
        e.preventDefault();

        guardarCarrito(jQuery(this));
    });

    function guardarCarrito($this){
        var parent = $this.closest("[id^='material_']");

        var $post_ID = jQuery("#post_ID").val();
        var $material = parent.find(".title-material").text();
        var $submaterial = parent.find(".sub-title-material").text();
        var $dimension = parent.find(".selectDimensiones").val();
        var $quantity = parent.find(".selectQuantity").val();
        var $cost = parent.find(".cost").text();

        var btn = $($this).attr('id');
        var id = btn.split("_");
        //console.log($cost);

        jQuery.ajax({
            type: "post",
            url: '/wp-admin/admin-ajax.php',
            data: "action=calc_function&id_row=" + $row[1] +
            "&post_ID=" + $post_ID +
            "&dimension="+ $dimension +
            "&quantity=" + $quantity,
            success: function(result) {
            $btn.removeClass( "btn_disable" );
            $btn.addClass( "btn_enable" );
            cost.empty();
            //console.log(result);
            cost.html(result);
            }
        });
    }


</script>