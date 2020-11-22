<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class My_Base_Controller extends Base_Controller {

	function __construct()
	{
		parent::__construct(); 

		// $this->checkUserLogged("admin");

		$this->set_site_header_data();
		$documents = $this->Common_model->getEfileDetails();
		$this->set('documents',$documents);
	}
}