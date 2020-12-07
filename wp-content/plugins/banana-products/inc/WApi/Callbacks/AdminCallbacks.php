<?php
/**
 * @package BananaProducts
 */
namespace Inc\WApi\Callbacks;

use Inc\Base\BaseController;

class AdminCallbacks extends BaseController{

    /* public function adminPage(){
        return require_once("$this->plugin_path/templates/admin.php");
    } */

    /* public function newProductPage(){
        return require_once("$this->plugin_path/templates/newProduct.php");
    } */

    /* public function adminCopyPage(){
        return require_once("$this->plugin_path/templates/adminCopy.php");
    } */

    public function bananaOptionsGroup( $input){
        return $input;
    }

    public function bananaAdminSection( ){
        echo '';
    }

    public function bananaTextExample( ){
        $value = esc_attr( get_option( 'text_example' ));
        echo '<input type="text" class="regular-text" name="text_example" value="' . $value . '" placeholder="Write Something Here!">';
    }

    public function bananaFirstName( ){
        $value = esc_attr( get_option( 'first_name' ));
        echo '<input type="text" class="regular-text" name="first_name" value="' . $value . '" placeholder="Write your first name!">';
    }
}
