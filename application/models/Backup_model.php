<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Backup_model extends Base_model {
	
	function __construct()
	{
		parent::__construct();
	}

	function createDbBackup()
    {
        $this->load->dbutil();
        $this->load->helper(array('file', 'download')); 
        $filename = date("Y-m-d-H-i-s") ;

        $prefs = array(
            'tables'        => array(),  
            'ignore'        => array(),         
            'format'        => 'zip',              // gzip, zip, txt
            'filename'      => $filename.'.sql',       
            'add_drop'      => TRUE,      
            'add_insert'    => TRUE,     
            'newline'       => "\n"       
        );

        $backup = $this->dbutil->backup($prefs);        
        $backup_path = 'backups/db/';        
        $backup_file = FCPATH. $backup_path . $filename. "." . $prefs["format"]; 
        $backup_created = write_file( $backup_file, $backup);

        $file_types = '*.'.$prefs["format"];
        $expire_time = 28800; // in minutes; 28800min = 20 Days

        foreach (glob($backup_path . $file_types) as $old_files) {

            $FileCreationTime = filectime($old_files);
            $FileAge = time() - $FileCreationTime;

            if ($FileAge > ($expire_time * 60)) {
                print "The file $old_files is older than $expire_time minutes\n";
                unlink($old_files);
            }
        }
        return $backup_created;
    }
}
