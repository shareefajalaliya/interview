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
        $user_details = $this->Profile_model->getUserDetails(log_user_id());
        $this->set('user_details',$user_details);
        if($this->input->post('update'))
         {
            $post_arr = $this->input->post();
            $post_arr['file_name'] = $user_details['user_photo'];
            
            if(($_FILES['userfile']['error']!=4))
            {
                $upload_path = './assets/images/profile_pic/';
                $config['upload_path'] = './assets/images/profile_pic/';
                $config['allowed_types'] = 'gif|jpg|png|jpeg|webp';
                $config['max_size'] = '200000';
                $config['max_height'] = '200000';
                $config['max_width'] = '200000';
                $config['remove_spaces'] = true;
                $config['overwrite'] = false; 

                $this->load->library('upload', $config);
                $msg = '';
                if($this->upload->do_upload('userfile')){

                    $uploaded = $this->upload->data();
                    $data = array(
                        'orig_name' => $uploaded['orig_name'],
                        'file_name' => $uploaded['file_name'],
                        'file_size' => $uploaded['file_size'],
                        'image_type' => $uploaded['image_type'],
                    );  
                    $post_arr['file_name']=$uploaded['file_name'];  

                } else {

                    $res['error'] = $this->upload->display_errors();
                    print_r($this->upload->display_errors());
                    die();
                }

            }
            else {
                $res['error'] = 'Image not found!';
            }

            $update_profile = $this->Profile_model->updateUserProfile($post_arr,log_user_id());
            if($update_profile){
                $this->redirect('Successfully update profile', "profile/profile", TRUE);
            }else{
                $this->redirect('Error on profile updation', "profile/profile", FLASE);
            }
        }
        loadTemplate();
    }

}