<?php  
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
* Signature Library Class
*
* This class enables you to create "Driver" libraries that add runtime ability
* to extend the capabilities of a class via additional driver objects
*
* @package     Signature
* @subpackage  Libraries
* @category    Libraries
* @author      Signature Team
* @link
*/

class CI_Signature {

    protected $CI;
    public $config = array();
    public $plan = array();

    public $LANG_ID =1;
    public $LANG_CODE = NULL;

    public $COMMON_PAGES;
    public $NO_LANG_CLASS;
    public $NO_LOGIN_PAGES;
    public $NO_MODEL_CLASS_PAGES;

    protected $LOGGED_IN_ARR = array();

    public $HEADER_FILES = array();
    public $FOOTER_FILES = array();


    function __construct()
    {
        $this->CI =& get_instance();
        empty($config) OR $this->initialize($config);

        log_message('info', 'Signature Class Initialized');         

        $this->COMMON_PAGES = array("login", "signup", "website","cron_jobs","backup", "referral", "jsloader");
        $this->NO_LANG_CLASS = array("fix_issues", "cron_jobs", 'autocomplete', "truncate", "backup", "jsloader");
        $this->NO_LOGIN_PAGES = array("login", "signup", "backup", "cron_jobs", "fix_issues", "referral", "website");
        $this->NO_MODEL_CLASS_PAGES = array("autocomplete", "jsloader");

        if(isset($this->CI->session->userdata['sign_logged_in']) && $this->CI->session->userdata['sign_logged_in']){ 
            $this->LOGGED_IN_ARR = $this->CI->session->userdata('sign_logged_in');
        }
    }

    public function log_user_id(){
        return element('user_id', $this->LOGGED_IN_ARR) ? $this->LOGGED_IN_ARR['user_id'] : NULL;
    }

    public function admin_user_id(){
        return element('admin_user_id', $this->LOGGED_IN_ARR) ? $this->LOGGED_IN_ARR['admin_user_id'] : NULL;
    }

    public function log_user_name(){
        return element('user_name', $this->LOGGED_IN_ARR) ? $this->LOGGED_IN_ARR['user_name'] : NULL;
    }

    public function log_user_type(){
        return element('user_type', $this->LOGGED_IN_ARR) ? $this->LOGGED_IN_ARR['user_type'] : NULL;
    }

    public function log_lang_id(){
        return element('lang_id', $this->LOGGED_IN_ARR) ? $this->LOGGED_IN_ARR['lang_id'] : NULL;
    }

    public function theme_folder($user_type){
        return $this->getSettingValueByKey($user_type."_theme_folder");
    }

    public function getSettingValueByKey($key){
        $value = NULL;
        $this->CI->db->select("value");
        $this->CI->db->where("key", $key);
        $query = $this->CI->db->get("settings");

        foreach ($query->result_array() as $result) {
            $value = $result["value"];
        }
        return $value;
    }

    public function getSettingsByCode($code){
        $result = array();
        $this->CI->db->select("*");
        $this->CI->db->where("code", $code);
        $query = $this->CI->db->get("settings");
        foreach ($query->result_array() as $row) {
            $result[] = array( 
                "setting_id" => $row["setting_id"],
                "key" => $row["key"],
                "value" => $row["value"],
                "data" => json_decode($row["data"]),
            );
        }
        return $result;
    }

    public function getSettingsByKey($key){
        $result = array();
        $this->CI->db->select("*");
        $this->CI->db->where("key", $key);
        $query = $this->CI->db->get("settings");

        foreach ($query->result_array() as $row) {
            $result = array( 
                "setting_id" => $row["setting_id"],
                "code" => $row["code"],
                "value" => $row["value"],
                "data" => unserialize($row["data"]),
            );
        }
        return $result;
    } 

    public function header_include($path, $prepend_base_url = TRUE) 
    {  
        if ($prepend_base_url) 
        { 
            $this->HEADER_FILES[] = assets_url() . $path; 
        } 
        else
        { 
            $this->HEADER_FILES[] = $path; 
        } 

        return $this; 
    } 

    public function footer_include($path, $prepend_base_url = TRUE) 
    { 
        if ($prepend_base_url) 
        { 
            $this->FOOTER_FILES[] = assets_url() . $path; 
        } 
        else
        { 
            $this->FOOTER_FILES[] = $path; 
        } 

        return $this; 
    } 

}
// end -- Signature Library Class
