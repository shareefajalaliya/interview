<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once ("admin/My_Base_Controller.php");

class Login extends My_Base_Controller {

    function __construct() {
        parent::__construct(); 
    }

    function index()
    {
        if($this->hasSession()){
            $this->redirect("", "dashboard", FALSE);
        }

        $this->maintanance_mode();

        $this->load->helper('cookie'); 
        $user_name = '';
        $password = '';
        if($this->input->post("login") && $this->authenticate_user()){
            $user_name = $this->input->post("user_name"); 
            $user_id = $this->Common_model->userNameToID($user_name); 

            $this->form_validation->set_rules('password', lang("text_password") , 'callback_check_sign_database'); 
            $this->form_validation->set_message('check_sign_database', lang('error_there_is_no_user_exist'));
            $login_res = $this->form_validation->run();

            if ($login_res) 
            { 
                if($this->input->post('remember') == 'on'){
                    $this->input->set_cookie("login_user_name", $this->input->post("user_name") ,time()+ (10 * 365 * 24 * 60 * 60), '', '', 'sign_');
                    $this->input->set_cookie("login_password", $this->input->post("password") ,time()+ (10 * 365 * 24 * 60 * 60), '', '', 'sign_');
                }

                $this->Common_model->insertIntoActivityHistory($user_id, $user_id, 'login');
                $this->redirect("", "dashboard", true);
            }else {
                if($user_id){
                    $this->Common_model->insertIntoActivityHistory($user_id, $user_id, 'login_attempt');
                }
            }
        }

        if ($this->input->post('forgot') && $this->verify_forgot_pass()) {
            $post_arr = $this->input->post(); 
            $user_name_forgot = $post_arr["user_name_forgot"];
            $email = $post_arr["email"];
            $user_id = $this->Common_model->userNameToID($user_name_forgot);
            if($user_id == "")
            {
                $msg = lang('text_invalid_user_name');
                $this->redirect($msg, 'login', FALSE);
            }
            $user_email = $this->Common_model->getUserEmail($user_id);

            if ($user_email == $email) {   
                $keyword = $this->Login_model->getKeyWord($user_id);
                $this->load->model('Mail_model');
                $mail_arr = array(
                    'user_id' => $user_id,
                    'keyword' => $keyword,
                );
                $this->Mail_model->sendEmails('forgot_password', $mail_arr);
                $msg = lang('text_please_check_mail_for_reset_password');
                $this->redirect($msg, "login", TRUE);
            } else {
                $msg = lang('error_user_email_not_match');
                $this->redirect($msg, 'login', FALSE);
            }
        } 


        if(empty($user_name)){
            if(get_cookie('sign_login_user_name')){
                $user_name = get_cookie('sign_login_user_name');
                $password = get_cookie('sign_login_password');
            }
        }

        $lang_arr = array_column($this->LOGIN_LANG_ARR, 'code', 'language_id');
        $this->set("lang_code", $lang_arr[$this->LOGIN_LANG_ID]);

        $this->set("user_name", $user_name);
        $this->set("password", $password);

        $this->set("lang_file", 'login');
        loadTemplate();
    }

    function authenticate_user() 
    {
        $user_name = $this->input->post('user_name');
        $password = $this->input->post('password');

        $this->form_validation->set_rules('user_name',  lang("text_username") , 'trim|required|strip_tags|min_length[4]|max_length[12]|htmlentities');
        $this->form_validation->set_rules('password', lang("text_password") , 'trim|required|strip_tags|min_length[6]|max_length[30]');
        $g_recaptcha = value_by_key('g_recaptcha');
        $recaptcha_login = value_by_key('recaptcha_login');
        if($g_recaptcha && $recaptcha_login){
            $this->form_validation->set_rules('g-recaptcha-response', "", 'callback_check_captcha'); 
            $this->form_validation->set_message('check_captcha', lang('error_recaptcha_not_match'));
        }
        $val_res = $this->form_validation->run();
        return $val_res;
    }

    function check_sign_database() 
    {
        $flag = false;
        $login_details = $this->input->post();  
        $user_name = $login_details['user_name'];
        $password = $login_details['password'];

        $login_result = $this->Login_model->login($user_name, $password);
        if ($login_result) {
            $this->Login_model->setUserSessionDatas($login_result);
            $flag = true;
        } else {
            $flag = false;
        }
        return $flag;
    }

    function logout() {
        if ($this->hasSession()) {
            $user_name = log_user_name();
            $user_id = log_user_id();
            $user_type = log_user_type();

            if ($user_id) {
                $this->Common_model->insertIntoActivityHistory($user_id, $user_id,'log_out');
            }
        }

        foreach ($this->session->userdata as $key => $value) {
            if (strpos($key, 'sign_') === 0) {
                $this->session->unset_userdata($key);
            }
        }
        $this->session->unset_userdata('adm_year');
        $this->session->unset_userdata('year');
        $this->session->unset_userdata('post_year');
        $this->session->unset_userdata('search_student_id');

        $path = "login";    
        $path = "login";       
        $msg = lang('text_successfully_logged_out');
        $this->redirect("$msg", $path, true);
    }


    function verify_forgot_pass() {
        $post_arr = $this->input->post(); 
        $user_name = $post_arr["user_name_forgot"];
        $email = $post_arr["email"];

        $this->form_validation->set_rules('user_name_forgot', lang('text_username'), 'trim|required');
        $this->form_validation->set_rules('email', lang('text_email'), 'trim|required');

        $result =  $this->form_validation->run();
        return $result;
    }


    function maintanance_mode() {
        $site_details = $this->Settings_model->getCompanyInformation();
        if ($site_details['maintenance_mode']) {
            echo $site_details['maintenance_mode_text'];die();
        }
    }

}
