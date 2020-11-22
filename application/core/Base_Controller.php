<?php
class Base_Controller extends CI_Controller {


    public $COMPANY_NAME;              
    public $SIDE_MENU = NULL; 
    public $SUPPORT_MENU = NULL;
    public $CSS_JS = array();
    public $VIEW_DATA_ARR = array();

    public $LANG_ARR = array();
    public $LOGIN_LANG_ARR = array();
    public $LOGIN_LANG_ID = NULL;

    public $URL_FULL;


    function __construct()
    {
        parent::__construct();

        $this->set_default_data();

        $this->set_sign_logged_user_data(); 

        $this->set_sign_flash_message();
        
    } 

    function set_default_data() {

        $site_details = array();
        $this->load->model("Settings_model");
        $site_details = $this->Settings_model->getCompanyInformation();
        $this->set("site_details",$site_details);
        $this->COMPANY_NAME = $site_details["company_name"];

        if(element('default_login_lang_id', $this->session->userdata)){
            $this->LOGIN_LANG_ID = $this->session->userdata('default_login_lang_id');
        }else{
            $this->LOGIN_LANG_ID = $site_details["login_lang"];
        }
        $logged_details = $this->session->userdata('sign_logged_in');
        $this->set("logged_details", $logged_details);       
    }

    function set_sign_logged_user_data() {
        if ($this->hasSession()) { 

            $this->SIDE_MENU = $this->My_Base_model->getSideMenu(log_user_type(), current_uri());

            if($this->router->class == 'support'){
                $this->SUPPORT_MENU = $this->My_Base_model->getSideMenu(log_user_type(), current_uri(), 'support');
            }
            
            $logout_url = base_url().'login/logout';
            $this->set("logout_url", $logout_url);

            $user_details = $this->Common_model->getSignUserDetails(log_user_id(), log_user_type());

        $this->lang->load('common', 'english');
            switch ('yes') {
                case 'yes':
                $user_status        = lang("text_active");
                $status_fa_icon     = "fa-flag";
                $status_label_color = "label-success";
                break;

                case 'not_verified':
                $user_status        = lang("not_verified");
                $status_fa_icon     = "fa-info-circle";
                $status_label_color = "label-danger";
                break;  

                case 'inactive':
                $user_status        = lang("text_inactive");
                $status_fa_icon     = "fa-medkit";
                $status_label_color = "badge-warning";
                break;  

                case 'block':
                $user_status        = lang("text_blocked");
                $status_fa_icon     = "fa-ban";
                $status_label_color = "badge-danger";
                break;

                case 'no':
                $user_status        = lang("text_blocked");
                $status_fa_icon     = "fa-ban";
                $status_label_color = "badge-danger";
                break;

                default:
                $user_status        = lang("text_active");
                $status_fa_icon     = "fa-flag";
                $status_label_color = "badge-info";
                break;
            }; 
            $this->set("user_status", $user_status);
            $this->set("email", $user_details['email']);
            $this->set("status_fa_icon", $status_fa_icon);
            $this->set("mobile", $user_details['mobile']);
            $this->set("status_label_color", $status_label_color);
            $this->set('user_thump', $user_details['user_thump']);
            $this->set('profile_pic', $user_details['user_photo']);
            $this->set('facebook', $user_details['facebook']);
            $this->set('google_plus', $user_details['gplus']);
            $this->set('twitter', $user_details['twitter']);
            $this->set('linkedin', $user_details['linkedin']);

        }
    }

    function set_sign_flash_message() {
        $flash_message = $this->session->flashdata('redirect_message');
        if (isset($flash_message)) {
            $this->set("flashdata", $flash_message["flashdata"]);
            $this->set("type", $flash_message["type"]);
            $this->set("box", $flash_message["box"]);
        } else {
            $this->set("box", FALSE);
        }
    }

    function set_session_flash_data($message, $message_type ) {
        $redirect_message["flashdata"] = $message;
        $redirect_message["type"] = $message_type;
        $redirect_message["box"] = true;
        $this->session->set_flashdata('redirect_message', $redirect_message);
    }

    function hasSession() {
        $flag = !empty($this->session->userdata['sign_logged_in']) ? true : false;
        return $flag;
    }

    function set($key, $value) {
        $this->VIEW_DATA_ARR[$key] = $value;
    }

    function redirect($message, $page_to_reload, $message_type = false, $redirect_message = array()) 
    {
        $redirect_message["flashdata"] = $message;
        $redirect_message["type"] = $message_type;
        $redirect_message["box"] = true;
        $this->session->set_flashdata('redirect_message', $redirect_message);

        $path = base_url();

        $split_pages = explode("/", $page_to_reload);
        $controller_name = $split_pages[0];

        if (in_array($controller_name, $this->signature->COMMON_PAGES)) {
            $path .= $page_to_reload;
            redirect("$path", 'refresh');
            exit();
        } else {
            if ($this->hasSession()) {
                $user_type = $this->session->userdata['sign_logged_in']['user_type'];
                if ($user_type == "admin" || $user_type == "employee") {
                    $path .= "admin/" . $page_to_reload;
                } else {
                    $path .= $user_type."/" . $page_to_reload;
                }
                redirect("$path", 'refresh');
                exit();
            } else {
                if (in_array($controller_name, $this->signature->NO_LOGIN_PAGES)) {
                    $path .= $page_to_reload;
                    redirect("$path", 'refresh');
                    exit();
                } else {
                    $path .= "login";
                    redirect("$path", 'refresh');
                    exit();
                }
            }
        }
    }
    function web_redirect($msg, $page, $message_type = false, $MSG_ARR = array()) {
        $redirect_message["flashdata"] = $msg;
        $redirect_message["type"] = $message_type;
        $redirect_message["box"] = true;
        $this->session->set_flashdata('redirect_message', $redirect_message);
        
        $path = base_url();
        $path .= $page;
        redirect("$path", 'refresh');
        exit();
    }
    function set_site_header_data(){
    }

    function checkUserLogged($logged_user_type = "") {
        $login_link = base_url();
        if ($this->hasSession() && !in_array($this->router->class, $this->signature->COMMON_PAGES)) {
            $user_type = $this->session->userdata['sign_logged_in']['user_type'];
            if ($user_type != $logged_user_type || !$this->My_Base_model->hasPermission(current_uri())) 
            {
                //show_404();
                $this->lang->load('common', 'english');
                $this->redirect(lang("text_no_permission"),"dashboard");
                exit();
            }
        } else {
            if(!in_array($this->router->class, $this->signature->COMMON_PAGES))
            {
                //show_404();
                $this->lang->load('common', 'english');
                $this->redirect(lang("text_your_session_was_out"), "login");
                exit(); 
            }
        }
        return true;
    }
}