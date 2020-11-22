<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once ("My_Base_Controller.php");

class Profile extends My_Base_Controller 
{

    function __construct()
    {
        parent::__construct();  
    }

    public function profile($action='',$user_id = '')
    {
        $this->set('title','Profile');
        $user_details = $this->Profile_model->getUserDetails();
        $this->set('user_details',$user_details);
        if($action == 'confirm')
        {
           
            $result = $this->Profile_model->changeUserStatus($user_id,'active');
            if($result)
            {
                $this->redirect('Confirmed User','profile/profile',true);
            }
            else
            {
                $this->redirect('Error','profile/profile',false);
            }
        }

        if($action == 'delete')
        {
            $result = $this->Profile_model->changeUserStatus($user_id,'rejected');
            if($result)
            {
                // die();
                $this->redirect('Reject User','profile/profile',true);
            }
            else
            {
                $this->redirect('Error','profile/profile',false);
            }
        }
        loadTemplate();
    }

}