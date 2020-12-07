<?php 
/*
Template Name: About Us
*/
global $acerca_page;
get_header();?>
<div id="about-us" class="content">
    <div class="row">
        <div id="left-col" class="col-3">
            <div id="top-container">
                <img id="ellipse" src="<?php echo get_template_directory_uri('')."/images/about/hollow-ellipse.svg";?>"alt="">
            </div>
            <div id="middle-container">
                <img id="dots" src="<?php echo get_template_directory_uri('')."/images/about/dotsMiddle.svg";?>" alt="">
            </div>
            <div id="bottom-container">
                <img id="elipse" src="<?php echo get_template_directory_uri('')."/images/about/EllipseBig.svg";?>" alt="">
            </div>
        </div>
        <div id="center-col" class="col-xl-8 col-lg-10 col-10">
            <h1 class="title"><?php the_title();?></h1>
            <div id="images" class="row">
                <img id="ana" src="<?php the_field('ana');?>"alt="">
                <img id="ban" src="<?php the_field('ban');?>"alt="">
                <img id="ana-mob" src="<?php the_field('ana_mob');?>"alt="">
                <img id="ban-mob" src="<?php the_field('ban_mob');?>"alt="">
            </div>
            <div id="arquetipo" class="row">
                <h2><?php echo $acerca_page['bananeidad'];?></h2>
                <p><?php the_field('bananeidad');?></p>
            </div>
            <div id="valores" class="row">
                <p><?php the_field('valores');?></p>
            </div>
            <div id="first-container">
                <div id="banana">
                    <h2><?php echo $acerca_page['productos'];?></h2>
                    <p><?php the_field('productos_servicios');?></p>
                </div>
                <div id="escenario">
                    <h2><?php echo $acerca_page['escenario'];?></h2>
                    <p><?php the_field('escenario');?></p>
                </div>
            </div>
            <div id="second-container">
                <div id="banana">
                    <h2><?php echo $acerca_page['hobbies'];?></h2>
                    <p><?php the_field('hobbies');?></p>
                </div>
                <div id="tech">
                    <h2><?php echo $acerca_page['tecnologia'];?></h2>
                    <div id="img-container">
                        <img src="<?php echo get_template_directory_uri('')."/images/tech.svg";?>"alt="">
                    </div>
                </div>
            </div>
            <div id="manifiesto" class="row">
                <img src="<?php echo get_template_directory_uri('')."/images/about/banafesto.svg";?>" alt="">
                <p><?php the_field('bananafesto');?></p>
            </div>
        </div>
        <div id="right-col" class="col-3">
            <div id="top-container">
                <img id="ellipse" src="<?php echo get_template_directory_uri('')."/images/about/half.svg";?>"alt="">
            </div>
            <div id="bottom-container">
                <img id="ellipse" src="<?php echo get_template_directory_uri('')."/images/about/dotsDown.svg";?>" alt="">
            </div>
        </div>
    </div>
</div>

<?php get_footer();?>