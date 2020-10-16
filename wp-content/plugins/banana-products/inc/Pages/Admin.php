<?php
/**
 * @package BananaProducts
 */
namespace Inc\Pages;

use \Inc\WApi\SettingsApi;
use \Inc\Base\BaseController;
use \Inc\WApi\Callbacks\AdminCallbacks;

class Admin extends BaseController{

    public $settings; //SettingsApi
    public $callbacks; //AdminCallbacks

    public $pages = array();
    public $subpages = array();

    public $taller = array();
    public $impresion = array();

    public function register()
    {
        $this -> settings =new SettingsApi();

        $this -> callbacks =new AdminCallbacks();

        $this -> setPages();

        $this -> setSubpages();

        /* $this -> setSettings();
        $this -> setSections();
        $this -> setField(); */

        /* $this -> settings -> addPages($this -> pages) ->withSubPage ('Todos los productos')-> addSubPages( $this->subpages) -> register(); */

        $this -> retriveProducts();

        add_action( 'init', array( $this, 'activate'));
    }

    public function activate () {
        register_post_type('banana_products' ,
            array(
                'labels' => array(
                    'name' => 'Productos',
                    'singular_name' => 'Producto'
                ),
                'public' => true,
                'has_archive' => true,
                'menu_icon' => 'dashicons-screenoptions', 
                'menu_position' => 10
            )
        );
    }

    public function retriveProducts (){
        $request = wp_remote_get('https://calculadora.imprimebanana.com/api/productos');
        /* $test = json_decode($request, true);
        var_dump($test); */
        if( ! empty( $request ) ) {
            $body = wp_remote_retrieve_body($request);
            $data = json_decode($body, true);
            /* $productos = $data["taller"]["productos"];
            var_dump($productos); */
            /* $this -> taller = $data["taller"]["productos"];
            var_dump($this->taller); */
            /* foreach( $data["taller"]["productos"] as $product ) {
                echo '<p>' . $product . '</p>';
            } */
        }
    }

    public function setPages(){
        $this -> pages = array(
            array(
                'page_title' =>'Productos',
                'menu_title' => 'Productos',
                'capability' => 'manage_options',
                'menu_slug' => 'banana_products',
                'function' => array( $this->callbacks, 'adminPage'), //Template Callback
                'icon_url' => 'dashicons-screenoptions', 
                'position' => 10
            )
        );
    }

    public function setSubpages(){
        $this -> subpages = array(
            array(
                'parent_slug' => 'banana_products',
                'page_title' => 'Nuevo producto',
                'menu_title' =>  'Nuevo producto',
                'capability' =>  'manage_options',
                'menu_slug' =>  'banana_new_product',
                'function' => array( $this->callbacks, 'newProductPage') //Template Callback
            ),
            /* array(
                'parent_slug' => 'banana_products',
                'page_title' => 'Admin Copy',
                'menu_title' =>  'Admin Copy',
                'capability' =>  'manage_options',
                'menu_slug' =>  'banana_admin_copy',
                'function' => array( $this->callbacks, 'adminCopyPage') //Template Callback
            ) */
        );
    }

    public function setSettings(){
        $args = array(
            array(
                'option_group' => 'banana_options_group',
                'option_name' => 'text_example',
                'callback' => array( $this->callbacks, 'bananaOptionsGroup')
            ),
            array(
                'option_group' => 'banana_options_group',
                'option_name' => 'first_name',
                'callback' => array( $this->callbacks, 'bananaOptionsGroup')
            )
        );

        $this->settings->setSettings( $args );
    }

    public function setSections(){
        $args = array(
            array(
                'id' => 'banana_admin_index',
                'title' => 'Settings',
                'callback' => array( $this->callbacks, 'bananaAdminSection'),
                'page' => 'banana_products'
            )
        );

        $this->settings->setSections( $args );
    }

    public function setField(){
        $args = array(
            array(
                'id' => 'text_example',
                'title' => 'Text Example',
                'callback' => array( $this->callbacks, 'bananaTextExample'),
                'page' => 'banana_products',
                'section' => 'banana_admin_index',
                'args' => array( 
                    'label_for' => 'text_example',
                    'class' => 'example-class'
                )
            ),
            array(
                'id' => 'first_name',
                'title' => 'First Name',
                'callback' => array( $this->callbacks, 'bananaFirstName'),
                'page' => 'banana_products',
                'section' => 'banana_admin_index',
                'args' => array( 
                    'label_for' => 'first_name',
                    'class' => 'example-class'
                )
            )
        );

        $this->settings->setFields( $args );
    }
 }
