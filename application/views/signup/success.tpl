<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <title>Success | {$COMPANY_NAME} </title>
    <meta charset="utf-8" /> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"> 
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <!-- end: META -->
    <link rel="shortcut icon" href="{assets_url()}website/img/logos/favicon.png">
    <!-- start: MAIN CSS -->
    <link rel="shortcut icon" href="{assets_url()}website/img/logos/favicon.png">
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
                    {form_open('','')}
                    <div class="card">
                        <div class="card-body">

                            <div class="p-3">
                                <div class="float-right text-right">
                                    <h4 class="font-18 mt-3 m-b-5">Congratulations !</h4>
                                    <p class="text-muted">Your {$site_details['name']} account created successfullly.</p>
                                </div>
                                
                            </div>

                            <div class="p-3">
                                {* {include file="layout/flash_message.tpl"} *}

                                <h6 class="card-subtitle"> We have waited so long to have you among us. At last, the time has come. We are most delightfully welcoming you to join us today!</h6>
                                

                                <div class="table-responsive m-t-10">
                                    <table  class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">

                                        <tbody> 
                                            <tr>
                                                <td  > User Name </td>
                                                <td  > {$user_name} </td> 
                                            </tr> 
                                            <tr>
                                                <td  > Join Date </td>
                                                <td  > {$user_details['date']} </td> 
                                            </tr> 
                                            <tr>
                                                <td  > Email </td>
                                                <td  > {$user_details['email']} </td> 
                                            </tr>
                                        </tbody>
                                    </table>
                                    {if log_user_id()}
                                    <a href="{base_url()}{log_user_type()}/dashboard" class="btn waves-effect waves-light btn-success">Dashboard</a>
                                    {else}
                                    <a href="{base_url('login')}" class="btn waves-effect waves-light btn-success">{lang('Login')}</a>
                                    {/if}
                                </div>
                            </div>

                        </div>
                    </div>
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

