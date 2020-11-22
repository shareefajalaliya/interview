<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile_model extends Base_model {

    function __construct() {
        parent::__construct();
        $this->load->model('Mail_model');

    }

   

    public function updatePassword($new_pwd, $user_id) {
        $this->db->set('password', $new_pwd);
        $this->db->where('user_id', $user_id);
        $this->db->limit(1);
        $res = $this->db->update('login_info');
        return $res;
    }



    


    public function selectPassword($user_id) {
        $dbpassword = '';
        $this->db->select('password');
        $this->db->from('login_info');
        $this->db->where('user_id', $user_id);
        $this->db->where('status !=', 'server');
        $query = $this->db->get();

        foreach ($query->result_array() as $row) {
            $dbpassword = $row['password'];
        }
        return $dbpassword;
    }

    public function getUserDetails($user_id='')
    {
        $details = array();
        $this->db->select('u.*');
        $this->db->select('l.user_name,l.user_type,l.date_of_joining');
        $this->db->from('user_info as u');
        $this->db->join('login_info as l','l.user_id = u.user_id');
        $this->db->where('l.user_type','user');
        $this->db->where('l.status',1);
        $this->db->order_by('l.date_of_joining','DESC');
        if($user_id)
        {
            $this->db->where('l.user_id',$user_id);
        }
        $query = $this->db->get();
        foreach($query->result_array() as $row)
        {
            $row['date'] = date('Y-m-d', strtotime($row['date_of_joining']));
            if($user_id){

                $details = $row;
            }
            else{
                $details[] = $row;
            }
        }
        return $details;
    }

    public function changeUserStatus($user_id,$status)
    {
        $this->db->set('status',$status);
        $this->db->where('user_id',$user_id);
        $this->db->limit(1);
        $res = $this->db->update('login_info');
        return $res;
    }

    public function updateUserProfile($user_details, $user_id) {
        $this->db->set('dob', $user_details['dob']);
        $this->db->set('address', $user_details['address']);
        $this->db->set('name', $user_details['name']);
        $this->db->set('mobile', $user_details['mobile']);
        $this->db->set('city', $user_details['city']);
        
        if($user_details['file_name'])
            $this->db->set('user_photo', $user_details['file_name']);
       
        $this->db->where('user_id',$user_id);
        $result = $this->db->update('user_info');
        return $result;    
    }
}