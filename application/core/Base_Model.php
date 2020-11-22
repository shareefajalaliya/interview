<?php

class Base_Model extends CI_Model {

    
    public $COMMON_LINKS ;
    
    function __construct()
    {   
        parent::__construct();
        $this->COMMON_LINKS = array("login/logout"); 
    }

    public function begin() {
        $this->db->trans_start();
    }

    public function commit() {
        $this->db->trans_commit();
    }

    public function rollback() {
        $this->db->trans_rollback();
    }

    public function redirect($message, $page_to_reload, $message_type = false) {
        $details = array();
        $redirect_message["flashdata"] = $message;
        $redirect_message["type"] = $message_type;
        $redirect_message["box"] = true;
        $this->session->set_flashdata('redirect_message', $redirect_message);
        redirect($page_to_reload, 'refresh');
    }
    public function getUserId($username) {
        $user_id = 0;
        $this->db->select('user_id');
        $this->db->from('login_info');
        $this->db->where('user_name', $username);
        $this->db->limit(1);
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $user_id = $row->user_id;
        }
        return $user_id;
    }

    public function isUserExist($user_id) {
        $count = 0 ;
        $this->db->select("COUNT(user_id) as count");
        $this->db->from("login_info");
        $this->db->where('user_id', $user_id);
        $this->db->where('status', '1');
        $this->db->where('status !=', 'server');
        $query = $this->db->get();
        foreach ($query->result()AS $row) {
            $count = $row->count;
        }

        return $count;
    }
}
