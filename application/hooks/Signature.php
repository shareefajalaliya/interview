<?php

class DefaultPreLoader
{	 
	
} 


class DefaultPostLoader
{
	function initialize() {
		$CI =& get_instance();
		$CI->Script_style_model->loadCssAndJs(current_uri());
 
		if (!in_array($CI->router->class, $CI->signature->NO_MODEL_CLASS_PAGES)) 
		{
			$model = ucfirst($CI->router->class."_model");
			$CI->load->model($model);
		} 
		
		$CI->set('CURRENCY_ID', $CI->currency->getId());
		$CI->set('COMPANY_NAME', $CI->COMPANY_NAME);
		$CI->set('SIDE_MENU', $CI->SIDE_MENU);
		$CI->set('SUPPORT_MENU', $CI->SUPPORT_MENU);

		$CI->set('LANG_CODE', $CI->signature->LANG_CODE);
		$CI->set('LANG_ARR', $CI->LANG_ARR);   
		$CI->set('LOGIN_LANG_ARR', $CI->LOGIN_LANG_ARR);   
		$CI->set("LOGIN_LANG_ID", $CI->LOGIN_LANG_ID);

	}
} 

class LanguageLoader
{
	function initialize() {
		$CI =& get_instance();
		$CI->load->helper('language');


		$CI->LANG_ARR = $CI->Common_model->getLanguageDetails();
		$CI->LOGIN_LANG_ARR = $CI->Common_model->getLanguageDetails('', 'login_perm', 1);

		$lang_arr = array_column($CI->LANG_ARR, 'code', 'language_id');
		$CI->signature->LANG_CODE = $lang_arr[$CI->signature->LANG_ID];


		if(uri_string() == 'login/index' || uri_string() == ''){
			$lang_details = $CI->Common_model->getLanguageDetails($CI->LOGIN_LANG_ID, 'login_perm');

		}else{   
			$lang_details = $CI->Common_model->getLanguageDetails($CI->signature->LANG_ID);
		}
		$language_name = $lang_details['directory'];

		$CI->lang->load('common', $language_name);

		if (!in_array($CI->router->class, $CI->signature->NO_LANG_CLASS)) {
			$CI->lang->load($CI->router->class, $language_name);
		}
	}
}

class ReplicaLoader
{
	function initialize() {
		$CI =& get_instance();

		if($CI->router->class == 'referral'){

			$user_name =  $CI->uri->segment(2);

			if( $user_id = $CI->Common_model->userNameToID($user_name)){
				$user_details = $CI->Common_model->getSignUserDetails($user_id);
				$user_type = $CI->Common_model->getUserType($user_id);

				$replica_sess_array = array(
					'user_id' => $user_details['user_id'],
					'user_name' => $user_name,
					'user_photo' => $user_details['user_photo'],
					'user_type' => $user_type, 
					'lang_id' => $CI->Common_model->getUserLoginFieldInfo('default_lang', $user_id)
				);
				$CI->session->set_userdata('sign_replica_in', $replica_sess_array);

				$CI->REFERRAL_USER_NAME = $user_name;
				$CI->REFERRAL_USER_ID = $user_details['user_id'];
				$CI->REFERRAL_USER_TYPE = $user_type;

				$CI->set("REFERRAL_USER_NAME", $CI->REFERRAL_USER_NAME);
				$CI->set("REFERRAL_USER_ID", $CI->REFERRAL_USER_ID);
				$CI->set("REFERRAL_USER_TYPE", $CI->REFERRAL_USER_TYPE);
				$CI->set("REFERRAL_USER_IMAGE", $replica_sess_array['user_photo']);
				
				$CI->set("facebook", $user_details['facebook']);
				$CI->set("gplus", $user_details['gplus']);
				$CI->set("twitter", $user_details['twitter']);
				$CI->set("linkedin", $user_details['linkedin']);
				$CI->set("linkedin", $user_details['linkedin']);
				$CI->set("phone", $user_details['mobile']); 
				$CI->set("gender", $user_details['gender']);
				$CI->set("email", $user_details['email']);
				$CI->set("address", $user_details['address']);

			}else{
				$modal_data["type"]     = "no_permission";
				$modal_data["title"]    = lang("error_no_user_exist");
				$modal_data["body"]     = lang("text_would_like_continue");
				$modal_data["footer"]["continue_link"] = base_url();
				$modal_data["footer"]["cancel_link"] = base_url();
				$CI->custommePopupView($modal_data);die();
			}
		}
	}

}