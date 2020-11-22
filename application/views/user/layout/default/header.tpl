<!DOCTYPE html> 
<html lang="en"> 
<head>
	<title>{$title}{if $title} | {/if}{$COMPANY_NAME}</title>
	<!-- start: META -->
	<meta charset="utf-8" /> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="{$COMPANY_NAME}" content="{$site_details['company_address']}">
	<meta name="{$COMPANY_NAME}" content="{$COMPANY_NAME}"  />
	<meta name="{$COMPANY_NAME}" content="{$COMPANY_NAME}" />
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="author" content="https://signaturesoftwarelab.com">
	
    <link rel="shortcut icon" href="{assets_url()}images/logo/favicon.png">
	<!-- end: META -->
	
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,200,100,800' rel='stylesheet' type='text/css'> 
	<link rel="stylesheet" href="{assets_url()}plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="{assets_url()}plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="{assets_url()}plugins/iCheck/skins/all.css">

	<link rel="stylesheet" href="{assets_url()}plugins/perfect-scrollbar/src/perfect-scrollbar.css">
	<link rel="stylesheet" href="{assets_url()}plugins/animate.css/animate.min.css">


	<!-- end: MAIN CSS -->
	<!-- end: MAIN CSS -->
	<!-- start: CSS REQUIRED FOR SUBVIEW CONTENTS -->
	<!-- end: CSS REQUIRED FOR THIS SUBVIEW CONTENTS-->
	<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
	{header_files()}
	<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
	<!-- start: CORE CSS -->
	<link rel="stylesheet" href="{assets_url()}css/styles.css">
	<link rel="stylesheet" href="{assets_url()}css/styles-responsive.css">
	<link rel="stylesheet" href="{assets_url()}css/plugins.css">
	<link rel="stylesheet" href="{assets_url()}css/themes/theme-style8.css" type="text/css" id="skin_color">
	<link rel="stylesheet" href="{assets_url()}css/print.css" type="text/css" media="print"/>
	<link rel="stylesheet" href="{assets_url()}css/custom-style.css">

	<link rel="shortcut icon" href="{assets_url()}website/img/logos/favicon.png" />


	<!-- end: CORE CSS -->
</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<body>
	<!-- start: SLIDING BAR (SB) -->

	<input type="hidden" id="rootPath" value="{base_url()}">
	<input type="hidden" id="logType" value="{log_user_type()}">
	
	<!-- end: SLIDING BAR -->
	<div class="main-wrapper">
		<!-- start: TOPBAR -->
		<header class="topbar navbar navbar-inverse navbar-fixed-top inner">
			<!-- start: TOPBAR CONTAINER -->
			<div class="container">
				<div class="navbar-header center">

					<a class="sb-toggle-left hidden-md hidden-lg" href="#main-navbar">
						<i class="fa fa-bars"></i>
					</a>
					<!-- start: LOGO -->
					<a class="navbar-brand" href="{base_url()}"> 
						<h4 style="color:#FFFFFF;"><strong>{$site_details['company_name']} </strong></h4>
					</a>
					<!-- end: LOGO -->
				</div>
				{if log_user_type()}
				<div class="topbar-tools">
					<!-- start: TOP NAVIGATION MENU -->
					<ul class="nav navbar-right">
						<!-- start: USER DROPDOWN -->
						<li class="dropdown current-user">
							<a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#" style="color:#FFFFFF;">
								<img src="{assets_url()}images/profile_pic/{$profile_pic}" class="img-circle" alt=""> <span class="username hidden-xs">{log_user_name()}</span> <i class="fa fa-caret-down"></i>
							</a>
							<ul class="dropdown-menu dropdown-dark">
								<li>
									<a href="{base_url()}admin/profile/change-password">
										Password
									</a>
								</li>
								<li>
									<a href="{base_url()}login/logout">
										Log Out
									</a>
								</li>
							</ul>
						</li>
					</ul>
					<!-- end: TOP NAVIGATION MENU -->
				</div>
				{/if}
			</div>
			<!-- end: TOPBAR CONTAINER -->
		</header>
		<!-- end: TOPBAR -->
		<!-- start: PAGESLIDE LEFT -->
		<a class="closedbar inner hidden-sm hidden-xs" href="#">
		</a>

		{if log_user_type()}
		{include file="admin/layout/{theme_folder('admin')}/sidebar_left.tpl"}

		{else}
		<style type="text/css">
		.main-container{
			margin-left: 0px !important;
		}
	</style>
	{/if}
	<!-- end: PAGESLIDE LEFT -->
	<!-- start: PAGESLIDE RIGHT -->
	{if log_user_type()}
	{include file="admin/layout/{theme_folder('admin')}/sidebar_right.tpl"}
	{/if}

	<!-- end: PAGESLIDE RIGHT -->
	<!-- start: MAIN CONTAINER -->
	<div class="main-container inner">
		<!-- start: PAGE -->
		<div class="main-content">
			<!-- start: PANEL CONFIGURATION MODAL FORM -->
			
			<!-- /.modal -->
			<!-- end: SPANEL CONFIGURATION MODAL FORM -->
			<div class="container">
				<!-- start: PAGE HEADER -->
				<!-- start: TOOLBAR -->
				
				<div class="row">
					<div class="col-md-6">
						<ol class="breadcrumb">
							<li>
								<a href="{base_url()}">
									{strtoupper(lang('text_dash_board'))}
								</a>
							</li>
							<li class="active">
								{strtoupper($title)}
							</li>
						</ol>
					</div>
			

				</div>
				<!-- end: BREADCRUMB -->
				<!-- start: PAGE CONTENT -->

				<!-- start: ERROR NOTIFICATION -->
				<div class="row">
					<div class="col-md-12">
						{include file="admin/layout/{theme_folder( 'admin' )}/flash_message.tpl"}
					</div>
				</div>
				<!-- end: ERROR NOTIFICATION -->

