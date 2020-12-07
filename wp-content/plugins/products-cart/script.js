jQuery(document).ready(function () {

	var divAjax       = jQuery(".form_ajax");
	var alerts_form   = jQuery(".alerts_form");
	var btn_continuar = jQuery("#btn_continuar");

	var fa            = jQuery("#fadultos");
	var fn            = jQuery("#fninos");
	var selectInf     = jQuery('#finfantes');


	/* URL Actual JavaScript */

    var urlactual = document.URL.replace( /#.*/, "");
    urlactual = urlactual.replace( /\?.*/, "");

	/* Campos de fecha (Llegada y Salida) */

	var startDateTextBox = jQuery('#fllegada');
	var endDateTextBox   = jQuery('#fsalida');

	if(startDateTextBox.length > 0 && endDateTextBox.length > 0){

		var dateFormat = "dd/mm/yy",
	      from = startDateTextBox
	        .datepicker({
	          changeMonth: true,
	          numberOfMonths: 1,
	          minDate: 0,
	          dateFormat: "dd/mm/yy"
	        })
	        .on( "change", function() {
	          to.datepicker( "option", "minDate", getDate( this ) );
	        }),
	      to = endDateTextBox.datepicker({
	        changeMonth: true,
	        numberOfMonths: 1,
	        minDate: 0,
	        dateFormat: "dd/mm/yy"
	      })
	      .on( "change", function() {
	        from.datepicker( "option", "maxDate", getDate( this ) );
	      });
	 
	    function getDate( element ) {
	      var date;
	      try {
	        date = jQuery.datepicker.parseDate( dateFormat, element.value );
	      } catch( error ) {
	        date = null;
	      }
	      return date;
	    }
	}

	/* Campos de fecha (Llegada) */

	if(startDateTextBox.length > 0 && endDateTextBox.length == 0){

		startDateTextBox.datepicker({
			changeMonth: true,
			numberOfMonths: 1,
			minDate: 0,
			dateFormat: "dd/mm/yy"
		});
	}

	jQuery( document ).on("change", "#fllegada, #fsalida, #fadultos, #fninos, #finfantes", function() {
			alerts_form.html('').css({display:'none'});
				jQuery(".select_cuarto").html('');
				jQuery("#ftipo").prop("selectedIndex", 0);
			if(fa.val() != '' && fn.val() != '' && startDateTextBox.val() != '' && endDateTextBox.val() != '' && jQuery("#ftipo").val() != ''){
				jQuery( "#ftipo" ).trigger( "change" );
			}
	});

	/* Niños menores de X edad */

	jQuery( document ).on("change", "#fninos", function() {

		var divinfants = jQuery("#divfinfants");
		
		if(this.value !== '' && this.value !== '0'){

    		selectInf.find('option').remove();
			selectInf.append(jQuery('<option>', {
			    value: '',
			    text: 'Select'
			}));
			for (var i = 0; i <= this.value; i++) {
				selectInf.append(jQuery('<option>', {
				    value: i,
				    text: i
				}));
			}

			divinfants.css({display: 'block'});
		} else {
			selectInf.find('option').remove();
			divinfants.css({display: 'none'});
		}
	});

	/* Obtener los select con tipo, cuartos y ocupación */

	jQuery( document ).on("change", ".getfield", function() {

		alerts_form.html('').css({display:'none'});

		var accion  = jQuery( this ).data('accion');
		var post_id = jQuery( "#fpost_id" ).val();

		var name = jQuery(this).attr("name");
		var val  = jQuery(this).val();


		btn_continuar.addClass("disabled").prop('disabled', true);
		divAjax.css({display: 'block'});

		var datos = {
			action: accion,
			post_id: post_id,
			adultos: fa.val(),
			ninos: fn.val(),
			infantes: selectInf.val(),
			llegada: startDateTextBox.val(),
			salida: endDateTextBox.val()
		};
		datos[name] = val;

		//console.log(datos);

		jQuery.post(quetzal.ajax_url, datos, function(response) {

			var resp = jQuery.parseJSON(response);

			switch(resp.tipo) {
			    case 0:
			        alerts_form.html(resp.html).css({display:'block'});
			        jQuery(".select_cuarto").html('');

			        if(typeof resp.limp !== 'undefined'){
			        	jQuery("#ftipo").prop("selectedIndex", 0);
			        }

			    break;
			    case 1:
					jQuery(".select_" + accion).html(resp.html);
			    break;
			    default:
			    	jQuery(".select_bedroom").html('');
			}

			divAjax.css({display: 'none'});
			btn_continuar.removeClass("disabled").prop('disabled', false);
		
		});
	});

	/* Elimina un servicio */

	jQuery( document ).on("click", ".eliminar_servicio", function(e) {

		e.preventDefault();

		jQuery(".proceso_ajax").css({display: 'block'});

		var tipo = jQuery(this).data("tipo");
		var id   = jQuery(this).data("id");

		var datos = {
			action: 'eliminar',
			id: id,
			tipo: tipo
		};

		jQuery.post(quetzal.ajax_url, datos, function(response) {
			var resp = jQuery.parseJSON(response);
			if(resp.tipo == 1){
				window.location.href = resp.url;		
			}
		});
	});

	/* Envía formulario de pre reserva */

	btn_continuar.on("click", function(e) {

		e.preventDefault();

		var accion_evento = jQuery(this).data("accion");

		btn_continuar.addClass("disabled").prop('disabled', true);
		jQuery(".proceso_ajax").css({display: 'block'});
		//divAjax.css({display: 'block'});



		var datos = jQuery("#form_reserva" ).serialize();

		jQuery.post(quetzal.ajax_url, datos, function(response) {

			var resp = jQuery.parseJSON(response);

			switch(resp.tipo) {
			    case 0:
			        alerts_form.html(resp.html).css({display:'block'});
			    break;
			    case 1:
			    	console.log(accion_evento);
				    gtag('event', accion_evento, {
				    	'event_category': 'Click',
				    	'event_label': urlactual
				    });
					window.location.href = resp.url;
			    break;
			}

			jQuery(".proceso_ajax").css({display: 'none'});
			divAjax.css({display: 'none'});
			btn_continuar.removeClass("disabled").prop('disabled', false);
		
		});
	});


	jQuery(".vermastemp").on("click", function(e) {
		e.preventDefault();
		var temp_oculta = jQuery(".temp_oculta");

		if (temp_oculta.hasClass('zoomIn')) {
			temp_oculta.css({display: 'none'}).removeClass('zoomIn');
			jQuery(this).text('See more seasons');
		} else {
			temp_oculta.css({display: 'block'}).addClass('zoomIn');
			jQuery(this).text('Hide seasons');
		}
	});

});