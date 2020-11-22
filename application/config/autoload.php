<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
$autoload['packages'] = array();
 
$autoload['libraries'] = array('smartie' => 'smarty', 'email', 'session','form_validation','database', 'currency', 'signature');
 
$autoload['drivers'] = array();
 
$autoload['helper'] = array('url', 'file', 'language', 'currency', 'project', 'array');
 
$autoload['config'] = array();
 
$autoload['language'] = array();
 
$autoload['model'] = array('My_Base_model','Common_model', 'Script_style_model');

