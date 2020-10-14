<?php 
/*
Template Name: Single
*/
get_header();?>
<div id="single" class="content">
    <div class="row">
        <div id="left-col" class="col-3">
            <div id="top-container">
                <img id="up-dots" src="<?php echo get_template_directory_uri('')."/images/Dots_up.svg";?>" alt="">
            </div>
            <div id="bottom-container">
                <img id="ellipse-bottom" src="<?php echo get_template_directory_uri('')."/images/EllipseBig.svg";?>" alt="">
            </div>
        </div>
        <div id="center-col" class="col-xl-8 col-lg-10 col-10">
            <h1 class="title"><?php the_title();?></h1>
            <div id="info">
                <h2>Información general</h2>
                <p class="info">El volante, también conocido como “Flyer”, hace referencia a piezas publicitarias de un tamaño apto para que las personas las lleven consigo, pero que a la vez den una idea general de lo que se quiere dar a conocer.</p>
                <h2>Recomendación</h2>
                <p class="reco">El volante, también conocido como “Flyer”, hace referencia a piezas publicitarias de un tamaño apto para que las personas las lleven consigo, pero que a la vez den una idea general de lo que se quiere dar a conocer.</p>
            </div>
            <div id="materials">
                <h2>Materiales para Imprimir</h2>
                <div class="second">
                    <div id="material">
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
                    </div>
                    <div id="material">
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
                    </div>
                    <div id="material">
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
                    </div>
                </div>
            </div>
        </div>
        <div id="right-col" class="col-3">
            <div id="top-container">
                <img id="top-half" src="<?php echo get_template_directory_uri('')."/images/cart/half.svg";?>" alt="">
            </div>
            <div id="bottom-container">
                <img id="dots" src="<?php echo get_template_directory_uri('')."/images/dotsDown.svg";?>" alt="">
            </div>
        </div>
    </div>
</div>

<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>

<?php get_footer();?>