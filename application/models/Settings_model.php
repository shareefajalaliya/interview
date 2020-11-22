<?php
class Settings_model extends Base_model {

    function __construct() {
        parent::__construct();

    }     
    public function getCompanyInformation() {
        $details = array();
        $this->db->select("*");
        $this->db->from("company_information");
        $res = $this->db->get();
        foreach ($res->result_array() as $row) { 
            $details = $row;
            if (!file_exists('assets/images/logo/' . $row['logo'])) {
                $details['logo'] = 'default_logo.png';
            }
            if (!file_exists('assets/images/logo/' . $row['favicon'])) {
                $details['favicon'] = 'favicon.ico';
            }
            $details['email'] = $row['email'];
            $details['phone'] = $row['phone'];
            $details['company_address'] = $row['company_address'];
            $details['company_name'] = $row['company_name'];
            $details['login_lang'] = $row['login_lang'];

        }
        return $details;
    }


}