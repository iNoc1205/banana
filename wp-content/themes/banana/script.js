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
   $(document).on('change', '[data-key="field_5f8915adcbe89"] .acf-input select', function(e) {
     
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


     // https://www.advancedcustomfields.com/resources/javascript-api/
     
   });
 })(jQuery);