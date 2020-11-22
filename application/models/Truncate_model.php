<?php 
class Truncate_model extends Base_model {
	
	function __construct()
	{
		parent::__construct();
	}

	public function truncateAll(){
		
		$admin_id = log_user_id();
		$admin_name = log_user_name();
		$admin_pass = $this->Common_model->getUserLoginFieldInfo('password', $admin_id);
		

		$admin_details = $this->Common_model->getSignUserDetails($admin_id);
		$today = date("Y-m-d H:i:s");

		$dbprefix = $this->db->dbprefix;
		$name = $this->db->database;
		$table_list = $this->db->list_tables(); 

		if(in_array($dbprefix."activity_history", $table_list))
		{
			$this->db->truncate("activity_history");
		}

		if(in_array($dbprefix."signup_otp", $table_list))
		{
			$this->db->truncate("signup_otp");
		}
		
		

		
		if(in_array($dbprefix."contact_comments", $table_list))
		{
			$this->db->truncate("contact_comments");
		}
		$users_tb = $dbprefix.'login_info';
		if(in_array($users_tb, $table_list))
		{

			$width_ceiling = 1;

			$admin_data = array(
				"user_id" => $admin_id,
				"user_type" => "admin",
				"user_name" => $admin_name,
				"password" => $admin_pass,
				"status" => "1",
				"date_of_joining" => $today,
				
				
			);
			
			$this->db->truncate("login_info");
			$this->db->query("ALTER TABLE ".$users_tb." AUTO_INCREMENT = $admin_id");	
			$insert_us = $this->db->insert("login_info", $admin_data);

			if(!$insert_us)
			{	
				$return_arr['status'] = FALSE;
				$return_arr['message'] = lang('login_info_insertion_failed');
				return $return_arr;
			}
		}

		if(in_array($dbprefix.'user_info', $table_list))
		{
			$this->db->truncate("user_info");
			$insert_ud = $this->db->insert('user_info', $admin_details);
			if(!$insert_ud)
			{
				$return_arr['status'] = FALSE;
				$return_arr['message'] = lang('user_info_insertion_failed');
				return $return_arr;
			}
		}
		$return_arr['status'] = TRUE;
		$return_arr['message'] = "Truncate done successfully...";
		return $return_arr;
	}

}
