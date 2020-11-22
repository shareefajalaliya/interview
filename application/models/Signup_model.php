<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Signup_model extends Base_model {

    function __construct() {
        parent::__construct();

    }

    public function insertIntoLoginInfo($details)
    {
        $date = date('Y-m-d H:i:s');
       $this->db->set('user_name', $details['user_name']);
       $this->db->set('password', md5($details['password']));
        $this->db->set('date_of_joining', $date);
        $otp = $this->Common_model->getRandomString(6,'login_info','signup_otp');
        $this->db->set('signup_otp',$otp);
        $result = $this->db->insert('login_info');


        $user_id = $this->db->insert_id();
        $this->db->set('user_id', $user_id);
       $this->db->set('email', $details['email']);
       $this->db->set('dob', $details['dob']);
       $this->db->set('city', $details['city']);
        $result = $this->db->insert('user_info');

        $this->db->set('user_id',$user_id);
        $this->db->set('email',$details['email']);
        $this->db->set('otp',$otp);
        $this->db->set('submitted_date',$date);
        $this->db->set('status',1);
        $result = $this->db->insert('signup_otp');

        $this->load->model('Mail_model');
        $mail_arr = array(
                'user_id' => $user_id,
            'otp' => $otp,
            'user_name' => $details['user_name'],
            'date' => $date,
            'password' => $details['password'],
        );
        $this->Mail_model->sendEmails('registration', $mail_arr);

        $return_data['user_name'] = $details['user_name'];
        $return_data['user_id'] = $user_id;
        $return_data['status'] = true;
        return $return_data; 

    }

    public function otpVerification($user_id)
    {
        $this->db->set('status',1);
        $this->db->where('user_id',$user_id);
        $update = $this->db->update('login_info');
        return $update;
    }

    
}


