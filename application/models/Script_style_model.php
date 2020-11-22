<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Script_style_model extends Base_model {

	function __construct() {
		parent::__construct();
	}
	
	public function loadCssAndJs($url){
		$SIGN = $this->signature;

		if($url == "dashboard/index" ){
			

		}elseif($url == "profile/change_password"){
			//auto complete
			$SIGN->header_include('plugins/autocomplete/jquery-ui.min.css');
			$SIGN->header_include('plugins/autocomplete/style.css'); 
			$SIGN->footer_include('plugins/autocomplete/jquery-ui.min.js'); 
			$SIGN->footer_include('plugins/autocomplete/filter.js');

			$SIGN->footer_include('js/page-js/profile.js');

		} 
		
		
	}
}