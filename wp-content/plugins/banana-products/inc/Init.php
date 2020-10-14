<?php
/**
 * @package BananaProducts
 */
namespace Inc;

final class Init
{
    /**
     * Store all the classes inside an array
     * @return array Full list of classes
     */
    public static function get_services(){
        return array(
            Pages\Admin::class,
            Base\Enqueue::class
        );
    }
    
    /**
     * Loop through the classes, initialize them, 
	 * and call the register() method if it exists
	 * @return
     */
    public static function register_services(){
        foreach ( self::get_services() as $class ) {
            $service = new $class();
			if ( method_exists( $service, 'register' ) ) {
				$service->register();
			}
		}
    }
}


/* use Inc\Activate;
use Inc\Deactivate;
use Inc\Pages\Admin;

if ( !class_exists( 'BananaProducts' ))
{
    class BananaProducts
    {        
        public $plugin;

		function __construct() {
			$this->plugin = plugin_basename( __FILE__ );
		}

        function register(){
            add_action('admin_enqueue_scripts', array($this, 'enqueue'));
            add_action( 'admin_menu', array( $this, 'add_admin_pages' ));
        }
    
        public function add_admin_pages() {
            add_menu_page( 'Productos', 'Productos', 'manage_options', 'banana_products', array( $this, 'admin_index' ), 'dashicons-screenoptions', 10 );
        }
    
        function admin_index(){
            require_once plugin_dir_path( __FILE__ ) . 'templates/admin.php';
        }
    
        function create_post_type(){
            add_action('init', array( $this, 'custom_post_type' ));
        }
        function custom_post_type(){
            register_post_type('product', ['public' => true, 'label' => 'Products']);
        }
        function enqueue() {
            wp_enqueue_style('mypluginstyle', plugins_url( '/assets/mystyle.css', __FILE__ ));
            wp_enqueue_script('mypluginstyle', plugins_url( '/assets/myscript.js', __FILE__ ));
        }
        function activate() {
			Activate::activate();
		}
    }
    
    $bananaProducts = new BananaProducts();
    $bananaProducts -> register();
    
    
    // activation

    register_activation_hook( __FILE__, array( $bananaProducts, 'activate'));
    
    // deactivation
    register_deactivation_hook( __FILE__, array( 'Deactivate', 'deactivate'));
}*/