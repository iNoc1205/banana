<?php 
/*
Template Name: Contact Us
*/
get_header();?>
<div id="contact" class="content">
    <div class="row">
        <div id="left-col" class="col-3">
            <div id="top-container">
                <img id="ellipse" src="<?php echo get_template_directory_uri('')."/images/contact/hollow-ellipse.svg";?>" alt="">
            </div>
            <div id="bottom-container">
                <img id="dots" src="<?php echo get_template_directory_uri('')."/images/contact/DotsDown.svg";?>" alt="">
            </div>
        </div>
        <div id="center-col" class="col-xl-8 col-lg-10 col-10">
            <h1 class="title"><?php the_title();?></h1>
            <div id="wrapper" class="row">
                <div id="info" >
                    <p>Diseño & Impresión Digital</p>
                    <p class="direccion"><?php the_field('direccion');?></p>
                    <p class="tel"><?php the_field('telefono');?></p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3936.5692991483947!2d-83.70758858466992!3d9.371326886112328!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8fa14eeec042d173%3A0x77f2dc1b2b4383dd!2sBanana!5e0!3m2!1ses!2scr!4v1599793096337!5m2!1ses!2scr" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
                <div id="contact">
                    <?php echo do_shortcode('[contact-form-7 id="91" title="Formulario de contacto 1"]'); ?>
                </div>
            </div>
        </div>
        <div id="right-col" class="col-3">
            <div id="top-container">
                <img id="dots" src="<?php echo get_template_directory_uri('')."/images/contact/DotsUp.svg";?>" alt="">
            </div>
            <div id="bottom-container">
                <img id="ellipse" src="<?php echo get_template_directory_uri('')."/images/contact/half.svg";?>" alt="">
            </div>
        </div>
    </div>
</div>

<?php get_footer();?>