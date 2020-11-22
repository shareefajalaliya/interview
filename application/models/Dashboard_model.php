<?php

class Dashboard_model extends Base_model {

    function __construct() {
        parent::__construct();
        // $this->load->model('Details_model');
    }

    public function searchUser($search_word='')
    {
        $details = array();
        $this->db->select('u.*');
        $this->db->select('l.user_name,l.user_type,l.date_of_joining');
        $this->db->from('user_info as u');
        $this->db->join('login_info as l','l.user_id = u.user_id');
        $this->db->where('l.user_type','user');
        // $this->db->where('l.status','yes');
         $where  = " u.first_name like '%$search_word%' or u.second_name like '%$search_word%' or  u.mobile like '%$search_word%' or  u.email like '%$search_word%'";
        $this->db->where($where);
        $this->db->order_by('l.date_of_joining','DESC');
        $query = $this->db->get();
        foreach($query->result_array() as $row)
        {
            $this->load->model('Website_model');
            $row['country'] = $this->Website_model->IdToCountryName($row['country']);
            $row['date'] = date('Y-m-d', strtotime($row['date_of_joining']));
            $details[] = $row;

        }
        return $details;
    }

    public function getTotalUsers($status=''){
        $cnt = 0;
        $this->db->select('count(user_id) as cnt');
        $this->db->from('login_info');
        $this->db->where('user_type !=','admin');
        // $this->db->where('status','yes');
        if($status)
            $this->db->where('status',$status);
        $query = $this->db->get();
        foreach($query->result() as $row)
        {
            $cnt = $row->cnt;
        }

        return $cnt;
    }

    public function getUser()
    {
        $user = array();
        $this->db->select('user_id,user_name');
        $this->db->from('login_info');
        $this->db->order_by('date_of_joining','ASC');
        $query = $this->db->get();
        foreach($query->result_array() as $row)
        {
            $user[] = $row;
        }

        return $user;
    }

}