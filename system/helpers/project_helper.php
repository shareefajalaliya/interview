<?php

defined('BASEPATH') OR exit('No direct script access allowed');
 
// ------------------------------------------------------------------------

if ( ! function_exists('value_by_key'))
{
	/**
	 * Lang
	 *
	 * Fetches a language variable and optionally outputs a form label
	 *
	 * @param	string	$line		The language line
	 * @param	string	$for		The "for" value (id of the form element)
	 * @param	array	$attributes	Any additional HTML attributes
	 * @return	string
	 */
	function value_by_key($key)
	{
		return get_instance()->signature->getSettingValueByKey($key);
	}
}


if ( ! function_exists('log_user_id'))
{ 
	function log_user_id()
	{
		return get_instance()->signature->log_user_id();
	}
}

if ( ! function_exists('admin_user_id'))
{ 
	function admin_user_id()
	{
		return get_instance()->signature->admin_user_id();
	}
}

if ( ! function_exists('log_user_type'))
{ 
	function log_user_type()
	{
		return get_instance()->signature->log_user_type();
	}
}


if ( ! function_exists('log_user_name'))
{ 
	function log_user_name()
	{
		return get_instance()->signature->log_user_name();
	}
}


if ( ! function_exists('theme_folder'))
{ 
	function theme_folder($user_type)
	{
		return get_instance()->signature->theme_folder($user_type);
	}
}


if ( ! function_exists('loadTemplate'))
{ 
	
	function loadTemplate($view_file = '') {

		$CI =& get_instance();
		if (in_array($CI->router->class, $CI->signature->COMMON_PAGES)) {
			if($view_file){
				$CI->smarty->view("$view_file" . '.tpl', $CI->VIEW_DATA_ARR);
			} else
			{
				$CI->smarty->view($CI->router->class . '/' . $CI->router->method . '.tpl', $CI->VIEW_DATA_ARR);
			}
		} else {
			if($view_file){
				$CI->smarty->view("$view_file" . '.tpl', $CI->VIEW_DATA_ARR);
			} else
			{
				$CI->smarty->view(log_user_type()."/" . $CI->router->class . '/' . $CI->router->method . '.tpl', $CI->VIEW_DATA_ARR);
			}
		}
	}
}
 


if ( ! function_exists('header_files'))
{ 

	function header_files() 
	{ 
		$CI =& get_instance();
		$final_includes = ''; 
		foreach ($CI->signature->HEADER_FILES as $include) 
		{  
			if (preg_match('/js$/', $include)) 
			{ 
 
				$final_includes .= "\n".'<script type="text/javascript" src="' . $include . '"></script>'; 
			}
			elseif (preg_match('/css$/', $include)) 
			{ 
 
				$final_includes .= "\n".'<link href="' . $include . '" rel="stylesheet" type="text/css" />'; 
			} 
		} 
		return $final_includes; 
	} 
}

if ( ! function_exists('footer_files'))
{ 

	function footer_files() 
	{ 
		$CI =& get_instance();
		$final_includes = ''; 
		foreach ($CI->signature->FOOTER_FILES as $include) 
		{ 
			if (preg_match('/js$/', $include)) 
			{ 
				$final_includes .= "\n".'<script type="text/javascript" src="' . $include . '"></script>'; 
			} 
			elseif (preg_match('/css$/', $include)) 
			{ 
				$final_includes .= "\n".'<link href="' . $include . '" rel="stylesheet" type="text/css" />'; 
			} 
		}  
		return $final_includes; 
	} 
}

