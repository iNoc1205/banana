<?php
/*
Plugin Name: Reservas Quetzals
Description: Sistema de reservas.
Author: Andrey Solís
Author URI: https://dicfaweb.com/
License: GPL2
Version: 1.0
*/

// session_start();

$__FILE__ = __FILE__;

define('DW_URL', plugin_dir_url( $__FILE__ ) );

define('DW_PATH', plugin_dir_path( $__FILE__ ) );

# Clave para encriptar datos
// $clave     = '***********';

# Configuración menú, css y otros Admin
include DW_PATH . '/inc/config.php';

# Funciones necesarias en el plugins
include DW_PATH . '/inc/funciones.php';

# Llamados por AJAX
include DW_PATH . '/inc/ajax.php';

# Funciones necesarias en el plugins shortcodes
include DW_PATH . '/inc/shortcode.php';
