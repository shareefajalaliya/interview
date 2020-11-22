<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <title>{lang('text_login')} | {$COMPANY_NAME} </title>
    <meta charset="utf-8" /> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"> 
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!-- end: META -->
    <link rel="shortcut icon" href="{assets_url()}images/logo/favicon.png">
    <!-- start: MAIN CSS -->
    <link rel="stylesheet" href="{assets_url()}plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="{assets_url()}plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="{assets_url()}plugins/animate.css/animate.min.css">
    <link rel="stylesheet" href="{assets_url()}plugins/iCheck/skins/all.css">
    <link rel="stylesheet" href="{assets_url()}css/styles.css">
    <link rel="stylesheet" href="{assets_url()}css/styles-responsive.css">
    <link rel="stylesheet" href="{assets_url()}plugins/iCheck/skins/all.css">
    <!-- end: MAIN CSS --> 

</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<body class="login">
    <span class="hide">
        <span id="error_username_required">{lang("error_username_required")}</span>
        <span id="error_password_required">{lang("error_password_required")}</span>
        <span id="error_password_must_have_letter">{lang("error_password_must_have_letter")}</span> 
        <span id="error_email_required">{lang("error_email_required")}</span> 
    </span>

    <div class="row">
        <div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">

            <!-- start: LOGIN BOX --> 


            <div class="box-login">
                {include file="admin/layout/{theme_folder('admin')}/flash_message.tpl"  name="flash_message"}

         
                    <div class="form-group">
                            {form_open('login','id="login_form" name="login_form" class="form-login"')}
                            <fieldset>

                                <div class="errorHandler alert alert-danger no-display">
                                    <i class="fa fa-remove-sign"></i> 
                                    {lang("error_you_have_some_performed_some_mistakes")}
                                </div>
                                <div class="form-group">
                                    <span class="input-icon">
                                        <input type="text" class="form-control" name="user_name" id="user_name" placeholder="{lang('text_username')}" value="{$user_name}" autocomplete="off">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    {form_error("user_name")}
                                </div>
                                <div class="form-group form-actions">
                                    <span class="input-icon">
                                        <input type="password" class="form-control password" name="password"  id="password" placeholder="{lang('text_password')}" value="{$password}" autocomplete="off">
                                        <i class="fa fa-lock"></i>
                                        
                                    </span>
                                    {form_error("password")}
                                </div>
                                {if $two_fa}
                                <div class="col-xs-12 no-padding">
                                    <div class="form-group col-xs-8 no-padding">
                                        <span class="input-icon">
                                            <input type="text" class="form-control" name="2fa_otp"  id="2fa_otp" placeholder="{lang('text_2fa_number')}" >
                                            <i class="fa fa-shield"></i>
                                        </span>
                                        {form_error("2fa_otp")}
                                    </div>

                                    <div class="no-padding col-xs-4">
                                        <button type="button" class="btn btn-default btn-squared col-xs-12" id="get_otp">
                                            {lang("text_send_otp")}
                                        </button>
                                    </div>
                                </div>
                                {/if}
                                {if $g_recaptcha && $recaptcha_login}
                                <style type="text/css">
                                    .box-login > .row > div:first-child > div:first-child
                                    {
                                        padding: 80px;
                                    }
                                </style>
                                <div class="form-group form-actions">
                                    {$widget}
                                    {$script}
                                    {form_error("g-recaptcha-response")}
                                </div>
                                {/if}
                                <div class="form-actions">
                                    {* <label for="remember" class="checkbox-inline">
                                        {form_checkbox('remember', 1, get_cookie('sign_login_user_name')) }
                                        {lang("text_keep_me_in_sign_in")}  

                                    </label> *}
                                    <a href="{base_url('signup/register')}" class="btn btn-green pull-left"><i class="fa fa-arrow-circle-left"></i>Signup</a>
                                    <button type="submit" class="btn btn-green pull-right" name="login" value="login">
                                        {lang("text_login")} <i class="fa fa-arrow-circle-right"></i>
                                    </button>
                                </div>
                            </fieldset>
                            {form_close()}
                            <!-- start: COPYRIGHT -->
                            <div class="row copyright">
                                2017 - {$smarty.now|date_format:"%Y"} &copy; <a href="#">{$site_details['company_name']}</a>.
                            </div>
                            <!-- end: COPYRIGHT --> 

                        </div>
                    </div>
                <!-- </div> -->
                <!-- end: LOGIN BOX -->
            </div>
        </div>
        <!-- start: MAIN JAVASCRIPTS -->  
        <script src="{assets_url()}plugins/jQuery-login/jquery-2.1.1.min.js"></script> 
        <script src="{assets_url()}plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
        <script src="{assets_url()}plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="{assets_url()}plugins/iCheck/jquery.icheck.min.js"></script>
        <script src="{assets_url()}plugins/TouchSwipe/jquery.touchSwipe.min.js"></script>
        <!-- end: MAIN JAVASCRIPTS -->
        <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
        <script src="{assets_url()}plugins/jquery-validation/dist/jquery.validate.min.js"></script>
        <script src="{assets_url()}js/login.js"></script>
        <!-- end: JAVASCRIPTS REQUIRED -->
        <script>
            jQuery(document).ready(function() {
                Login.init();
            });
        </script>
    </body>
    <!-- end: BODY -->
    </html>

