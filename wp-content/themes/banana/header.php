<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banana Print</title>
    <?php wp_head();?>
</head>
<body>
    <header class="nav">
        <div id=logo-wrapper>
            <img id="logo" src="<?php echo get_template_directory_uri() . "/images/logo.svg"; ?>" alt="">
        </div>
        <?php
        wp_nav_menu(
            array(
                'theme_location' => 'left-menu',
                'menu_class' => 'left-menu'
            )
        );
        ?>
        <?php
        wp_nav_menu(
            array(
                'theme_location' => 'social-menu',
                'menu_class' => 'social-menu'
            )
        );
        ?>
    </header>
    
