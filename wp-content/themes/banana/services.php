<?php 
/*
Template Name: Services
*/
get_header();?>
<div id="services" class="content">
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
            <h1 class="title"><?php the_title();?></h1>
            <div class="tab-wrap">
                <!-- active tab on page load gets checked attribute -->
                <input type="radio" id="tab1" name="tabGroup1" class="tab" checked>
                <label class="impresion" for="tab1"><?php echo $servicios_page['impresiones'];?></label>

                <input type="radio" id="tab2" name="tabGroup1" class="tab">
                <label class="disenos" for="tab2"><?php echo $servicios_page['disenos'];?></label>

                <input type="radio" id="tab3" name="tabGroup1" class="tab">
                <label class="social" for="tab3"><?php echo $servicios_page['socials'];?></label>

                <div class="tab__content" id="content">
                <p><?php the_field('impresiones');?></p>
                </div>

                <div class="tab__content">
                <p><?php the_field('disenos');?></p>
                </div>

                <div class="tab__content">
                <p><?php the_field('community_manager');?></p>
                </div>

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