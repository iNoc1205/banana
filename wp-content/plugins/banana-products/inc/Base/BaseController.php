<?php
/**
 * @package BananaProducts
 */
namespace Inc\Base;

class BaseController{
    public $plugin_path;
    public $plugin_url;
    
    public function __construct(){
        $this -> plugin_path = plugin_dir_path(dirname(__FILE__,2));
        $this -> plugin_url = plugin_dir_url (dirname(__FILE__,2));
    }
    
}