<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once "admin/My_Base_Controller.php";

class Backup extends My_Base_Controller {


	public function create_backup()
	{ 
 
        $result = $this->Backup_model->createDbBackup();
        if ($result) {  
            die("SUCCESS");
        } else { 
            die("FAILED");
        }
	}
}
