 (function($){
   if (typeof acf === 'undefined') {
     return;
   }
   
   // detect change of tax field ??
   // insert the field key of your tax field
   // need to use $(document).on because field may be dynamically inserted and may not exist when the document is ready
   // this might need to target the hidden field, not sure, testing would be required
   // it really depends on the specifics of the field settings
   // you need to inspect the HTML see the structure of the field

   ///////////////////// TIPOS TALLER /////////////////////
   /*$(document).on('change', '[data-key="field_5f8915adcbe89"] .acf-input select', function(e) {
     
     // once your getting the change event to fire
     // get field value using ACF JS API

     var valor = this.value;
     //field.hide(); -  field.show();

      var selectTipo = jQuery(this).parents('.acf-row').find('[data-key="field_5f8a0db7c4bc2"] .acf-input select');
      selectTipo.html('<option>Cargando...</option>');

     jQuery.ajax({
         type: "post",
         url: ajaxurl,
         data: "action=obtener_tipos_taller&id_producto=" + valor,
         success: function(result){
            selectTipo.empty();
            selectTipo.html(result);
         }
     });     
   });*/

   ///////////////////// TALLER EXTRAS /////////////////////
  $(document).on('change', '[data-key="field_5f8a0db7c4bc2"] .acf-input select', function(e) {

    var valor = this.value;

    var selectExtras = jQuery(this).parents('.acf-row').find('[data-key="field_5f8fa8bdd4c85"] .acf-input ul');
    var idSelect = jQuery(this).attr('id');
    console.log(idSelect);
    selectExtras.html('<p>Cargando...</p>');

    jQuery.ajax({
        type: "post",
        url: ajaxurl,
        data: "action=obtener_extras_taller&id_producto=" + valor +"&id_select="+idSelect,
        success: function(result){
           selectExtras.empty();
           selectExtras.html(result);
        }
    });     
  });


  ///////////////////// TIPOS IMPRESION /////////////////////
  $(document).on('change', '[data-key="field_5f8915e7cbe8a"] .acf-input select', function(e) {
     
    // once your getting the change event to fire
    // get field value using ACF JS API

    var valor = this.value;
    //field.hide(); -  field.show();

    var selectTipo = jQuery(this).parents('.acf-row').find('[data-key="field_5f8a6e9f2341f"] .acf-input select');
    selectTipo.html('<option>Cargando...</option>');

    var selectAcabado = jQuery(this).parents('.acf-row').find('[data-key="field_5f8ddfac8324c"] .acf-input select');
    selectAcabado.html('<option>Cargando...</option>');

    

    jQuery.ajax({
        type: "post",
        url: ajaxurl,
        data: "action=obtener_tipos_impresion&id_iproducto=" + valor,
        success: function(result){
          var json = JSON.parse(result);
          selectTipo.empty();
          selectAcabado.empty();
          selectTipo.html(json[0]);
          selectAcabado.html(json[1]);
        }
    });

    // https://www.advancedcustomfields.com/resources/javascript-api/
    
  });
 
  $(document).on('change', '[data-key="field_5f8915adcbe89"] .acf-input select', function(e) {
    cargarTipos(jQuery(this), 'obtener_tipos_taller', 'elegir_tipo');
  });

  $(document).ready(function(){
    let rows = jQuery('.acf-field-5f891556cbe87 .acf-table .acf-row');
    jQuery.each(rows, function(i, val) {
      let selectTaller = jQuery(this).find('[data-name="elegir_meterial_taller"] select');
      if( selectTaller.prop('disabled') == false ){
        cargarTipos(selectTaller, 'obtener_tipos_taller', 'elegir_tipo');
      }

      let selectImpresion = jQuery(this).find('[data-name="elegir_material_impresion"] select');
      if( selectImpresion.prop('disabled') == false ){
        cargarTipos(selectImpresion, 'obtener_tipos_impresion', 'elegir_tipo_impresion');
      }
    });
  });


  function cargarTipos($this, $action, $keySelect )
  {
    var $post_ID = jQuery("#post_ID").val();

    var valor      = $this.val();
    var selectTipo = $this.parents('.acf-row').find('[data-name="' + $keySelect + '"] .acf-input select');
    var idSelect   = $this.attr('id');

    selectTipo.html('<option>Cargando...</option>');

    jQuery.ajax({
      type: "post",
      url: ajaxurl,
      data: "action=" + $action +
            "&id_producto=" + valor  +
            "&idSelect=" + idSelect + 
            "&post_ID=" + $post_ID,
      success: function(result){
        selectTipo.empty();
        selectTipo.html(result);
      }
    });
  }

})(jQuery);