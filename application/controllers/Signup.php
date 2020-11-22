<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once ("admin/My_Base_Controller.php");

class Signup extends My_Base_Controller {

    function __construct() {
        parent::__construct(); 
    }

    function register()
    {
        $this->set('title','Registration');
        if($this->input->post('registration') && $this->validate_register())
        {
            $post_arr = $this->input->post();
            $registration=$this->Signup_model->insertIntoLoginInfo($post_arr);
            if($registration)
            {
                $user_name = $registration['user_name'];
               
                $ecn_user_id = $this->Common_model->encrypt_decrypt( 'encrypt', $registration['user_id'] );
                $this->web_redirect("Please check your e-mail and enter your OTP", 'signup/enter_otp/'.$ecn_user_id ,TRUE);
            }
            else {
                $this->web_redirect("Error on registration", 'register' ,TRUE);
            }
        }
        loadTemplate();
    }

    function validate_register() {

        $password_length = value_by_key('password_length');

        $this->form_validation->set_rules('user_name', 'User Name', 'trim|required');
        $this->form_validation->set_rules('dob', 'Date of birth', 'trim|required');
        $this->form_validation->set_rules('city', 'City', 'trim|required');
        $this->form_validation->set_rules('email', 'E-mail', 'trim|required|valid_email');
         $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length['. $password_length .']|alpha_numeric');
        $this->form_validation->set_rules('c_password', 'Confirm Password', 'trim|required|min_length['. $password_length .']|matches[password]');
        $result =  $this->form_validation->run();
        return $result;
    }

    public function success($ecn_user_id = '')
    {
        $this->set('title','Success');
        if( !$ecn_user_id ){
            $this->redirect('No Permission', 'signup', FALSE );
        }

        $user_id = $this->Common_model->encrypt_decrypt('decrypt',$ecn_user_id);
        $user_details = $this->Common_model->getSignUserDetails($user_id); 
        $user_name = $this->Common_model->getUserLoginFieldInfo('user_name',$user_id);
        $user_details['date'] = date('Y - M - d');     
        
        $this->set('user_details',$user_details);
        $this->set('user_name',$user_name);
        loadTemplate();
    }

    public function enter_otp($enc_id='')
    {
        
        $this->set('title','OTP Verification');
        $user_id = $this->Common_model->encrypt_decrypt('decrypt',$enc_id);
        if($this->input->post('submit') && $this->validate_enter_otp())
        {
            $post_arr = $this->input->post();
            $otp = $this->Common_model->getUserLoginFieldInfo('signup_otp',$user_id);
            if($otp == $post_arr['otp'])
            {
                $result = $this->Signup_model->otpVerification($user_id);
                if($result)
                {
                    $this->web_redirect("Registration completed successfully", 'signup/success/'.$enc_id ,TRUE);
                }
                else
                {
                    $this->web_redirect("Error on registration", 'register' ,FALSE);
                }
            }
            else
            {
                $this->web_redirect("Please enter valid OTP", 'signup/enter_otp/'.$enc_id ,FALSE);
            }
        }
        loadTemplate();
    }
    function validate_enter_otp() {


        $this->form_validation->set_rules('otp', 'OTP', 'trim|required');
        $result =  $this->form_validation->run();
        return $result;
    }
}
