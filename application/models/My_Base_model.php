<?php

class My_Base_model extends Base_model {

    protected $LANG_CODE = "en";
    private $permission = array();

    function __construct() {
        parent::__construct();
        $this->LANG_CODE = $this->getLangCode($this->signature->LANG_ID);
        $this->permission["access"] =array( 
            
            'truncate/truncate-all',
            'backup/create-backup',
            'replica/index',
            'jsloader/file',
            'admission-form',
            'profile/delete',
            
        );
    }


    function getSideMenu($user_type, $current_url, $type= 'site', $status ='yes'){
        $permission_type = 'perm_' . $user_type;
        $path_root = base_url() . $user_type."/";

        $user_status = 'yes';

        if ($user_type == 'privileged_user') {
            $permission_type = 'perm_pre_user';
        }
        
        $current_url = str_replace('_', '-', $current_url);
        
        $menu_details = $this->getPermittedMenus($permission_type, $current_url, $path_root, $type, $status, $user_status );
        foreach ($menu_details as $key => $menu_arr) {
            $sub_menus =  $this->getSubMenus($menu_arr['menu_id'], $permission_type, $current_url, $path_root, $type, $status, $user_status );

            if($sub_menus['selected']){
                $menu_details[$key]['is_selected'] = "active";
            }
            unset($sub_menus['selected']);
            $menu_details[$key]['sub_menus'] = $sub_menus;
        }
        return $menu_details;

    }

    function getPermittedMenus($permission_type, $current_url, $path_root, $type, $status, $user_status ){
        $menu_details = array();
        $i= 0 ;
        $this->db->select("*");
        if($status != 'all')
            $this->db->where("status", $status);
        $this->db->where($permission_type, "1");
        
        if( $user_status == 'not_verified' )
        {   
            $this->db->where('not_verified', 1);
        }

        $this->db->where('type', $type);
        $this->db->order_by("order_id");
        $query = $this->db->get("menu");    
        foreach ($query->result_array() as $row) 
        {
            $is_selected= FALSE;
            $menu_id = $row['id'];
            $menu_link = $row['menu_link'];

            if($menu_link != "void"){
                array_push($this->permission["access"], $menu_link);
            }
            if(!in_array($menu_link, $this->COMMON_LINKS))
            {   
                if ($row['link_ref_id'] == '#') {
                    $menu_link = $path_root . $row['menu_link'];
                } elseif ($row['link_ref_id'] != "#") {
                    $menu_link = 'javascript:void(0)';
                }
            }

            if ($row['menu_link'] == $current_url) {
                $is_selected = "active";
            }

            $menu_details[$i]["menu_id"] = $menu_id;
            $menu_details[$i]["link_ref_id"] = $row['link_ref_id'];
            $menu_details[$i]["menu_link"] = $menu_link;
            $menu_details[$i]["icon"] = $row['icon'];
            $menu_details[$i]["order_id"] = $row['order_id'];
            $menu_details[$i]["is_selected"] = $is_selected;
            $menu_details[$i]["text"] = $row[$this->LANG_CODE.'_lang'];
            $i++;
        }
        return $menu_details;
    }

    function getSubMenus($menu_id, $permission_type, $current_url, $path_root, $type, $status, $user_status ){
        $sub_menu_details = array("selected" => FALSE);
        $without_user_links = array('register/registration', 'login/logout');
        $i= 0 ;

        $this->db->select("*");
        if($status != 'all')
            $this->db->where("status", $status);
        $this->db->where($permission_type, "1");
        $this->db->where('type', $type);
        $this->db->where("link_ref_id", $menu_id);
        $this->db->order_by("order_id");

        if( $user_status == 'not_verified' )
        {   
            $this->db->where('not_verified', 1);
        }
        
        $query = $this->db->get("sub_menu");

        foreach ($query->result_array() as $row) 
        {
            $is_selected= FALSE;
            $menu_id = $row['id'];


            if ($row['menu_link'] == $current_url) {
                $is_selected = "active";
                $sub_menu_details['selected'] = TRUE;
            } 

            if($row['menu_link']){
                array_push($this->permission["access"], $row['menu_link']);
            }

            if(in_array($row['menu_link'], $without_user_links)){
                $menu_link = base_url().$row['menu_link'];
            }else{
                $menu_link = $path_root . $row['menu_link'];
            }

            $sub_menu_details[$i]["id"] = $menu_id;
            $sub_menu_details[$i]["menu_link"] = $menu_link;
            $sub_menu_details[$i]["icon"] = $row['icon'];
            $sub_menu_details[$i]["order_id"] = $row['order_id'];
            $sub_menu_details[$i]["is_selected"] = $is_selected;
            $sub_menu_details[$i]["text"] = $row[$this->LANG_CODE.'_lang'];
            $i++;
        }
        return $sub_menu_details;
    }

    function getLangCode($language_id, $type='site_perm', $status = TRUE){
        $lang_code = "en";

        $this->db->select("code");
        $this->db->where($type, $status);
        $this->db->where("language_id", $language_id);
        $this->db->order_by("sort_order");
        $query = $this->db->get("language");
        if ($query->num_rows() > 0) {
            foreach ($query->result_array() as $row) 
            {
                $lang_code = $row['code'];
            }            
        }
        return $lang_code;
    }

    public function hasPermission($value, $key= "access") {
        $another_key = str_replace('_', '-', $value);
        
        if (isset($this->permission[$key]) ) 
        {
            if(in_array($value, $this->permission[$key]) || in_array($another_key, $this->permission[$key])){
                return TRUE;
            }
            return false;
        } else {
            return false;
        }
    }


}

