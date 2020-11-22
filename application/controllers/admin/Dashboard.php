<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once ("My_Base_Controller.php");

class Dashboard extends My_Base_Controller {

	function __construct()
	{
		parent::__construct(); 	
	}

	function index()
	{  
		
		$this->set("title", "Dashboard");
		$total_users = $this->Dashboard_model->getTotalUsers();
		$this->set('total_users',$total_users);
		$confirmed_users = $this->Dashboard_model->getTotalUsers('confirmed');
		$this->set('confirmed_users',$confirmed_users);
		$rejected_users = $this->Dashboard_model->getTotalUsers('rejected');
		$this->set('rejected_users',$rejected_users);
		// print_r($rejected_users);die();


		
		$search_result = array();
		$search_word = NULL;
		if($this->input->post('submit')&& $this->validate_dashboard())
		{
			$post_arr = $this->input->post();
			// print_r($post_arr);die();
			$search_word = $post_arr['search_word'];
			$search_result = $this->Dashboard_model->searchUser($search_word);
			$this->set('search_result',$search_result);
		}
		$this->set('search_word',$search_word);
		loadTemplate();
	}
	function validate_dashboard(){
		$this->form_validation->set_rules('search_word', 'search', 'trim|required|strip_tags');
		$validate_form = $this->form_validation->run();

        return $validate_form;
	}

}
