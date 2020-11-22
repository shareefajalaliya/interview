<?php 
class Common_model extends Base_model {

    function __construct() {
        parent::__construct();
    }

    public function getSignUserDetails($user_id) {
        $user_details = array();
        $this->db->select('*');
        $this->db->from("user_info");
        $this->db->where("user_id", $user_id);
        $query = $this->db->get();
        $this->load->model('Zone_model');
        foreach ($query->result_array() as $row) {
            if (!file_exists('assets/images/profile_pic/' . $row['user_photo'])) {
                $row['user_photo'] = 'nophoto.png';
            }
            // $row['year'] = date("Y", strtotime($row["dob"]));
            // $row['month'] = date("m", strtotime($row["dob"]));
            // $row['day'] = date("d", strtotime($row["dob"]));
            // $row['country_name'] = $this->Zone_model->IdToCountryName($row['country']);
            $user_details = $row;
        }
        return $user_details;
    }

    public function getUserLoginInfo($user_id, $type = 'user') {

        $user_details = array();
        $this->db->select('*');
        $this->db->from("login_info");
        $this->db->where("user_id", $user_id);
        $query = $this->db->get();
        foreach ($query->result_array() as $row) {
            $user_details = $row;
        }
        return $user_details;
    }

    public function getFullName($user_id) {
        $full_name = NULL;
        $this->db->select("name");
        $this->db->from("user_info");
        $this->db->where("user_id", $user_id);
        $this->db->limit(1);
        $res = $this->db->get();
        foreach ($res->result() as $row) {
            $full_name = $row->name;
         }
        return $full_name;
    } 

    public function getAdminId() {
        $user_id = NULL;
        $this->db->select('user_id');
        $this->db->from('login_info');
        $this->db->where('user_type', 'admin');
        $this->db->limit(1);
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $user_id = $row->user_id;
        }
        return $user_id;
    }



    public function getAdminUsername() {
        $user_name = NULL;
        $this->db->select('user_name');
        $this->db->from('login_info');
        $this->db->where('user_type', "admin");
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $user_name = $row->user_name;
        }
        return $user_name;
    }

    public function getAdminPassword() {
        $password = NULL;
        $this->db->select("password");
        $this->db->from("login_info");
        $this->db->where("user_type", 'admin');
        $this->db->limit(1);
        $res = $this->db->get();
        foreach ($res->result() as $row) {
            $password = $row->password;
        }
        return $password;
    }

    public function getJoiningDate($user_id) {
        $date_of_joining = NULL;
        $this->db->select("date_of_joining");
        $this->db->from("login_info");
        $this->db->where("user_id", $user_id);
        $res = $this->db->get();
        foreach ($res->result() as $row) {
            $date_of_joining = $row->date_of_joining;
        }
        return $date_of_joining;
    }

    public function getUserType($user_id) {
        $user_type = 0;
        $this->db->select('user_type');
        $this->db->from('login_info');
        $this->db->where('user_id', $user_id);
        $this->db->limit(1);
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $user_type = $row->user_type;
        }
        return $user_type;
    }

    public function userNameToID($username) {
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

    public function IdToUserName($user_id) {
        $user_name = NULL;
        $this->db->select('user_name');
        $this->db->from('login_info');
        $this->db->where('user_id', $user_id);
        $this->db->limit(1);
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $user_name = $row->user_name;
        }
        return $user_name;
    }

    public function insertIntoActivityHistory($user_id, $done_by, $purpose='NA', $data = array())
    {
        $date = date('Y-m-d H:i:s');
        $this->db->set('user_id',$user_id);
        $this->db->set('ip',$this->input->server('REMOTE_ADDR'));
        $this->db->set('done_by',$done_by);
        $this->db->set('date',$date);
        if($data)
            $this->db->set('data',$data);
        $this->db->set('activity',$purpose);
        $result = $this->db->insert('activity_history');
        return $result;
    }


    public function isUsernameValid($user_name) {
        $flag = false;
        $this->db->select('user_id');
        $this->db->from('login_info');
        $this->db->where('user_name', $user_name);
        $this->db->where_in( 'status', array( "yes", 'not_verified' ) );
        $this->db->limit(1);
        $query = $this->db->get();
        if ($query->num_rows()) {
            return true;
        }
        return $flag;
    }

    public function getUserEmail($user_id) {
        $email = 'NA';
        $this->db->select('email');
        $this->db->from('user_info');
        $this->db->where('user_id', $user_id);
        $this->db->limit(1);
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $email = $row->email;
        }
        return $email;
    }

    public function getRandomString($length,$check_table,$field_name) {

        $key = NULL;
        $charset = "0123456789";
        for ($i = 0; $i < $length; $i++)
            $key .= $charset[(mt_rand(0, (strlen($charset) - 1)))];
        $randum_id = $key;

        if($field_name == 'user_name' && $check_table == 'login_info'){
            $user_name_prefix = value_by_key('user_name_prefix');
            $user_name_postfix = value_by_key('user_name_postfix');
            $randum_id = $user_name_prefix . $randum_id . $user_name_postfix;
        }

        $this->db->select('*');
        $this->db->from("$check_table");
        $this->db->where("$field_name", $randum_id);
        $query = $this->db->get();
        $count = $query->num_rows();
        if ($count == 0){
            return $key;
        }
        else
            return $this->getRandomString($length,$check_table,$field_name);
    }

    public function getLanguageDetails($language_id="", $type='site_perm', $status = 1)
    {
        $langauge_details = array();
        $this->db->select("*");
        
        if($status != '-1'){
            $this->db->where($type, $status);
        }

        if($language_id){   
            $this->db->where("language_id", $language_id);
            $this->db->limit(1);
        }
        $query = $this->db->get("language");
        
        foreach ($query->result_array() as $result) {

            $result['encrypted_id'] = $this->encrypt_decrypt('encrypt', $result['language_id']);
            if($language_id){
                $langauge_details = $result;
            }else{
                $langauge_details[] = $result;
            }
        }
        return $langauge_details;
    }


    public function encrypt_decrypt($action, $string) 
    {
        $output = false;
        $encrypt_method = "AES-256-CBC";
        $secret_key = '123';
        $secret_iv = '123';
            // hash
        $key = hash('sha256', $secret_key);

        // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
        $iv = substr(hash('sha256', $secret_iv), 0, 16);
        if ( $action == 'encrypt' ) {
            $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
            $output = base64_encode($output);
        } else if( $action == 'decrypt' ) {
            $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
        }
        return $output;
    }


    public function getUserProfilePic($user_id) {
        $user_photo = 'nophoto.png';
        $this->db->select("user_photo");
        $this->db->from("user_info");
        $this->db->where("user_id", $user_id);
        $this->db->limit(1);
        $res = $this->db->get();
        foreach ($res->result() as $row) {
            $user_photo = $row->user_photo;
        }
        return $user_photo;
    }


    public function stripTagsTextArea($text = '') {
        $allowable_tags = '<b></b><i></i><u></u><strong></strong><em></em><p></p><s></s><sub></sub><sup></sup><ol></ol><ul></ul><li></li><blockquote></blockquote><a><img><table></table><tbody></tbody><tr></tr><td></td><h1></h1><h2></h2><h3></h3><h4></h4><h5></h5><h6></h6><pre></pre><address></address><div></div>';
        return strip_tags($text, $allowable_tags);
    }

    public function textAreaLineBreaker($text_area_data) {
        $str1 = str_replace(array('\r\n', '\r', '\n'), "<br/>", $text_area_data);
        $str2 = str_replace(array('\t'), "&nbsp;", $str1);
        return $str2;
    }

    function getUserLoginFieldInfo($field_name, $user_id){

        $field_value = NULL;
        $this->db->select($field_name);
        $this->db->where('user_id', $user_id);
        $this->db->from('login_info');
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $field_value = $row->$field_name;
        }
        return $field_value;
    }
    
    function getUserInfoFieldInfo($field_name, $user_id){

        $field_value = NULL;
        $this->db->select($field_name);
        $this->db->where('user_id', $user_id);
        $this->db->from('user_info');
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $field_value = $row->$field_name;
        }
        return $field_value;
    }
    

    function random_password( $length = 8 ) {
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-=+;:,.?";
        $password = substr( str_shuffle( $chars ), 0, $length );
        return $password;
    }    
    
     function getEfileDetails() 
    {
        $details = array();
        $this->db->order_by('sort_order','ASC');
        $query = $this->db->get('documents');
        $i = 0;
        foreach($query->result_array() as $row){
            $details[$i]['id'] = $row['id'];
            $details[$i]['doc_title'] = $row['file_title'];
            $i++;
        } 
        return $details;
    }
    
    
}