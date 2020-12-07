<?php
/*
Plugin Name: Prodcuts Cart
Description: Plugin para el carrito de los productos de Banana Print.
Version: 1.0.0
Author: Enoc Villalobos
License: GPLv2 or later
Text Domain: products-cart
 */

 /*
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */
if ( ! defined( 'ABSPATH' ) ) {
	die( 'Invalid request.' );
}

session_start();

$__FILE__ = __FILE__;

define('DW_URL', plugin_dir_url( $__FILE__ ) );

define('DW_PATH', plugin_dir_path( $__FILE__ ) );

# Configuración menú, css y otros Admin
include DW_PATH . '/inc/config.php';

# Funciones necesarias en el plugins
include DW_PATH . '/inc/funciones.php';

# Llamados por AJAX
include DW_PATH . '/inc/ajax.php';

# Funciones necesarias en el plugins shortcodes
include DW_PATH . '/inc/shortcode.php';
