<?php 
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
                <p class="info"><?php the_field('informacion_general');?></p>
            </div>
            <div id="materials">
                <h2>Materiales para Imprimir</h2>
                <div class="second">
                    <?php get_template_part('includes/section','material') ?>
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