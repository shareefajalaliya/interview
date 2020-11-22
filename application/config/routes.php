<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] 	= 'login/index';
$route['404_override'] 			= '';
$route['translate_uri_dashes'] = TRUE;
$route['referral/(:any)'] 		= 'referral/index/$1';
$route['jsloader/(:any)'] 		= "jsloader/file/$1"; 


