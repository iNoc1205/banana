(function($) {
   if (typeof acf === 'undefined') {
      return;
   }

   ///////////////////// TALLER EXTRAS /////////////////////
   $(document).on('change', '[data-name="elegir_tipo"] .acf-input select', function(e) {
      cargarExtras(jQuery(this), 'obtener_extras_taller', 'extras');
   });


   ///////////////////// ACABADOS IMPRESION /////////////////////
   $(document).on('change', '[data-name="elegir_tipo_impresion"] .acf-input select', function(e) {
      cargarExtras(jQuery(this), 'obtener_acabados_impresion', 'acabados');
   });


   $(document).on('change', '[data-key="field_5f8915e7cbe8a"] .acf-input select', function(e) {
      cargarTipos(jQuery(this), 'obtener_tipos_impresion', 'elegir_tipo_impresion');
   });

   $(document).on('change', '[data-key="field_5f8915adcbe89"] .acf-input select', function(e) {
      cargarTipos(jQuery(this), 'obtener_tipos_taller', 'elegir_tipo');
   });

   $(document).ready(function() {

      let rows = jQuery('.acf-field-5f891556cbe87 .acf-table .acf-row');

      jQuery.each(rows, function(i, val) {

         let selectTaller = jQuery(this).find('[data-name="elegir_meterial_taller"] select');
         if (selectTaller.prop('disabled') == false) {
            cargarTipos(selectTaller, 'obtener_tipos_taller', 'elegir_tipo');
            cargarExtras(selectTaller, 'obtener_extras_taller', 'extras', true);
         }

         let selectImpresion = jQuery(this).find('[data-name="elegir_material_impresion"] select');
         if (selectImpresion.prop('disabled') == false) {
            cargarTipos(selectImpresion, 'obtener_tipos_impresion', 'elegir_tipo_impresion');
            cargarExtras(selectImpresion, 'obtener_acabados_impresion', 'acabados', true);
         }

      });
   });


   function cargarTipos($this, $action, $nameSelect) {
      var $post_ID = jQuery("#post_ID").val();

      var valor      = $this.val();
      var selectTipo = $this.parents('.acf-row').find('[data-name="' + $nameSelect + '"] .acf-input select');
      var idSelect   = $this.attr('id');

      selectTipo.html('<option>Cargando...</option>');

      jQuery.ajax({
         type: "post",
         url: ajaxurl,
         data: "action=" + $action +
            "&id_producto=" + valor +
            "&idSelect=" + idSelect +
            "&post_ID=" + $post_ID,
         success: function(result) {
            selectTipo.empty();
            selectTipo.html(result);
         }
      });
   }

   function cargarExtras($this, $action, $nameSelect, $precargado = false) {
      var $post_ID = jQuery("#post_ID").val();

      var valor      = $this.val();
      var selectTipo = $this.parents('.acf-row').find('[data-name="' + $nameSelect + '"] .acf-input ul');
      var idCampo    = selectTipo.prev().attr('name');
      var idSelect   = $this.attr('id');

      selectTipo.html('Cargando...');

      jQuery.ajax({
         type: "post",
         url: ajaxurl,
         data: "action=" + $action +
            "&id_producto=" + valor +
            //"&idSelect=" + idSelect +
            "&post_ID=" + $post_ID +
            "&idCampo=" + idCampo +
            "&precargado=" + $precargado,
         success: function(result) {
            selectTipo.empty();
            selectTipo.html(result);
         }
      });
   }

})(jQuery);