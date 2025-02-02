<?php
/**
 * @package BananaProducts
 */

/*
Plugin Name: Banana Prodcuts
Description: Plugin para administrar los productos de Banana Print.
Version: 1.0.0
Author: Enoc Villalobos
License: GPLv2 or later
Text Domain: banana-products
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

// If this file is called directly, abort!!!
if ( ! defined( 'ABSPATH' ) ) {
	die( 'Invalid request.' );
}

// Require once the Composer Autoload
if ( file_exists( dirname( __FILE__ ) . '/vendor/autoload.php' ) ) {
	require_once dirname( __FILE__ ) . '/vendor/autoload.php';
}

/**
 * The code that runs during plugin activation
 */
function activate_banana_products(){
    Inc\Base\Activate::activate();
}
register_activation_hook( __FILE__, 'activate_banana_products');

/**
 * The code that runs during plugin deactivation
 */
function deactivate_banana_products(){
    Inc\Base\Deactivate::deactivate();
}
register_deactivation_hook( __FILE__, 'deactivate_banana_products');

/**
 * Initialize all the core classes of the plugin
 */
if(class_exists('Inc\\Init')){
    Inc\Init::register_services();
}