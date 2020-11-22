<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <title>{lang('text_reset_password')} | {$site_details['company_name']} </title>
    <!-- start: META -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- end: META -->
    <!-- start: MAIN CSS -->
    <link rel="stylesheet" href="{assets_url()}plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="{assets_url()}plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="{assets_url()}plugins/animate.css/animate.min.css">
    <link rel="stylesheet" href="{assets_url()}plugins/iCheck/skins/all.css">
    <link rel="stylesheet" href="{assets_url()}css/styles.css">
    <link rel="stylesheet" href="{assets_url()}css/styles-responsive.css">
    <link rel="stylesheet" href="{assets_url()}plugins/iCheck/skins/all.css">
    <link rel="shortcut icon" href="{assets_url()}images/logo/{$site_details['favicon']}" />
    <!-- end: MAIN CSS --> 

</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<span class="hide">
    <span id="error_username_required">{lang("error_username_required")}</span>
    <span id="error_username_must_have_letter">{lang("error_username_must_have_letter")}</span>
    <span id="error_password_required">{lang("error_password_required")}</span>
    <span id="error_password_must_have_letter">{lang("error_password_must_have_letter")}</span> 
    <span id="error_email_required">{lang("error_email_required")}</span> 
</span>


<body class="login">
    <div class="row">
        <div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
            <div class="logo">
                <img width="190px" src="{assets_url()}images/logo/{$site_details['logo']}">        
                <img >

            </div>

            <!-- start: LOGIN BOX -->
            <div class="box-login">
                {include file="admin/layout/{theme_folder('admin')}/flash_message.tpl"  name="flash_message"}

                <h3>{lang("text_reset_password")}</h3>
                <p>
                    {lang("text_please_reset_your_password")}
                </p>
                {form_open('','id="forgot_form" name="forgot_form" class="form-forgot" onload="document.getElementById(\'captcha-form\').focus()"')}
                    <div class="errorHandler alert alert-danger no-display">
                        <i class="fa fa-remove-sign"></i> 
                        {lang("error_you_have_some_performed_some_mistakes")}
                    </div>
                    <fieldset>
                        <div class="form-group form-actions">
                            <span class="input-icon">
                                <input type="password" class="form-control password" name="new_password" id="new_password" placeholder="{lang("text_new_password")}" >
                                <input type="hidden" name="keyword_encode" id="keyword_encode" value="{$keyword_encode}" >
                                <i class="fa fa-lock"></i>
                            </span>
                            {form_error("new_password")}
                        </div>
                        <div class="form-group form-actions">
                            <span class="input-icon">
                                <input type="password" class="form-control password" name="confirm_password" id="confirm_password" placeholder="{lang("text_confirm_password")}">
                                <i class="fa fa-lock"></i>
                            </span>
                            {form_error("confirm_password")}
                        </div>
                        <div class="form-actions">
                            <a class="btn btn-light-grey" href="{base_url()}">
                                <i class="fa fa-chevron-circle-left"></i> 
                                {lang("text_login")}
                            </a>
                            <button type="submit" class="btn btn-green pull-right" name ="reset_password" id ="reset_password" value="reset_password" >
                                {lang("text_reset_password")}
                                <i class="fa fa-arrow-circle-right"></i>
                            </button>
                        </div>
                    </fieldset>
                {form_close()}
                <!-- start: COPYRIGHT -->
                <div class="copyright">
                    {$smarty.now|date_format:"%Y"} &copy; {$site_details['company_name']}.
                </div>
                <!-- end: COPYRIGHT -->
            </div>
            <!-- end: LOGIN BOX -->
 
        </div>
    </div>
    <!-- start: MAIN JAVASCRIPTS -->  
    <script src="{assets_url()}plugins/jQuery/jquery-2.1.1.min.js"></script> 
    <script src="{assets_url()}plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
    <script src="{assets_url()}plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="{assets_url()}plugins/iCheck/jquery.icheck.min.js"></script>
    <script src="{assets_url()}plugins/jquery.transit/jquery.transit.js"></script>
    <script src="{assets_url()}plugins/TouchSwipe/jquery.touchSwipe.min.js"></script>
    <script src="{assets_url()}js/main.js"></script>
    <!-- end: MAIN JAVASCRIPTS -->
    <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="{assets_url()}plugins/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="{assets_url()}js/login.js"></script>
    <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script>
        jQuery(document).ready(function() {
            
            Login.init();
        });
    </script>
</body>
<!-- end: BODY -->


</html>

