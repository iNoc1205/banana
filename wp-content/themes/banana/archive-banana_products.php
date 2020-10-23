<?php 
get_header();?>
<div id="products-gallery" class="content">
    <div class="row">
        <div id="left-col" class="col-3">
            <div id="top-container">
                <img id="top-dots" src="<?php echo get_template_directory_uri('')."/images/faq/Dots_up.svg";?>"alt="">
            </div>
            <div id="bottom-container">
                <img id="ellipse-bottom" src="<?php echo get_template_directory_uri('')."/images/services/ellipse.svg";?>"alt="">
            </div>
        </div>
        <div id="center-col" class="col-xl-8 col-lg-10 col-10">
            <h1 class="title">PRODUCTOS</h1>
            <div class="container">
                <?php get_template_part('includes/section','products') ?>
            </div>
        </div>
        <div id="right-col" class="col-3">
            <div id="top-container">
                <img id="hollow" src="<?php echo get_template_directory_uri('')."/images/services/hollow.svg";?>"alt="">
            </div>
            <div id="bottom-container">
                <img id="top-dots" src="<?php echo get_template_directory_uri('')."/images/faq/Dots_up.svg";?>"alt="">
            </div>
        </div>
    </div>
</div>

<?php get_footer();?>