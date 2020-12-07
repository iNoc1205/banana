<?php 
/*
Template Name: Cart
*/
get_header();?>
<div id="cart" class="content">
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
            <div id="products">
                <div id="titles">
                    <p class="name"><?php echo $cart_page['producto'];?></p>
                    <p class="file"><?php echo $cart_page['archivo'];?></p>
                    <p class="quantity"><?php echo $cart_page['cantidad'];?></p>
                    <p class="cost"><?php echo $cart_page['costo'];?></p>
                </div>
                <div id="product">
                    <div id="details">
                        <p>Volante</p>
                        <p><?php echo $cart_page['material'];?><span>Couche 250 gm</span></p>
                        <p><?php echo $cart_page['dimension'];?><span>1920mm x1080mm</span></p>
                    </div>
                    <div id="archive">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="customFile" name="filename" multiple>
                            <label class="custom-file-label" for="customFile"><?php echo $cart_page['elegir'];?></label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck" name="example1">
                            <label class="custom-control-label" for="customCheck"><?php echo $cart_page['check'];?></label>
                        </div>
                    </div>
                    <div id="quantity">
                        <p><span>Cantidad:</span> 50</p>
                    </div>
                    <div id="cost">
                        <p><span>Costo Estimado:</span> 15 020</p>
                    </div>
                    <hr class="solid">
                </div>
                <div id="product">
                    <div id="details">
                        <p>Volante</p>
                        <p>Material: <span>Couche 250 gm</span></p>
                        <p>Dimension: <span>1920mm x1080mm</span></p>
                    </div>
                    <div id="archive">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="customFile" name="filename" multiple>
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck" name="example1">
                            <label class="custom-control-label" for="customCheck">Custom checkbox</label>
                        </div>
                    </div>
                    <div id="quantity">
                        <p><span>Cantidad:</span> 50</p>
                    </div>
                    <div id="cost">
                        <p><span>Costo Estimado:</span> 15 020</p>
                    </div>
                    <hr class="solid">
                </div>
                <div id="product">
                    <div id="details">
                        <p>Volante</p>
                        <p>Material: <span>Couche 250 gm</span></p>
                        <p>Dimension: <span>1920mm x1080mm</span></p>
                    </div>
                    <div id="archive">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="customFile" name="filename" multiple>
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck" name="example1">
                            <label class="custom-control-label" for="customCheck">Custom checkbox</label>
                        </div>
                    </div>
                    <div id="quantity">
                        <p><span>Cantidad:</span> 50</p>
                    </div>
                    <div id="cost">
                        <p><span>Costo Estimado:</span> 15 020</p>
                    </div>
                    <hr class="solid">
                </div>
            </div>
            <div id="contact">
                <div class="first">
                    <div class="name">
                        <label for=""><?php echo $cart_form['nombre'];?></label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="correo">
                        <label for=""><?php echo $cart_form['correo'];?></label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="tel">
                        <label for=""><?php echo $cart_form['tel'];?></label>
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div class="second">
                    <label for=""><?php echo $cart_form['mensaje'];?></label>
                    <textarea name="" id="" cols="2" rows="4" class="form-control"></textarea>
                    <div class="btn-container">
                        <button type="submit" class="btn btn-primary"><?php echo $cart_form['enviar'];?></button>
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