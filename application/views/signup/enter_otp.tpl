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
    <br><br><br><br><br><br>
    <div style="display:none;">
    <span id="error_the_fieldid_field_is_required">{lang('error_the_fieldid_field_is_required')}</span>
  <span id="error_atleast_number">{lang('error_atleast_number')}</span>
  <span id="error_enter_greater_number">{lang('error_enter_greater_number')}</span>
</div>
<div class="row">
    {* <div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4"> *}
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <div class="panel panel-white">
            <div class="panel-heading border-light">
    {include file="admin/layout/{theme_folder('admin')}/flash_message.tpl"  name="flash_message"}
                <h6 class="panel-title">
                    <i class="fa fa-thumbs-up fa-lg blue-color" >
                        Enter OTP
                    </i>
                </h6>
                <div class="panel-tools">                                       
                    <div class="dropdown">
                        <a data-toggle="dropdown" class="btn btn-xs dropdown-toggle btn-transparent-grey">
                            <i class="fa fa-cog"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-light pull-right" role="menu">
                            <li>
                                <a class="panel-collapse collapses" href="#">
                                    <i class="fa fa-angle-up"></i> 
                                    <span>{lang("text_collapse")}</span>
                                </a>
                            </li>
                            <li>
                                <a class="panel-expand" href="#"> <i class="fa fa-expand"></i> <span>{lang("text_fullscreen")}</span></a>
                            </li>                                       
                        </ul>
                    </div>
                    <a class="btn btn-xs btn-link panel-close" href="#"> <i class="fa fa-times"></i> </a>
                </div>
            </div>




            <div class="panel-body">
                {form_open('','id="pass_admin_change" name="pass_admin_change" class="form-login"' )}

                <div class="form-group">
                    <label class="control-label">
                        OTP <span class="symbol required"></span>
                    </label>
                    <input type="text"  class="form-control" id="otp" name="otp" autocomplete="off" value="{set_value('user_name')}" >
                    {form_error("otp")}
                </div>
                <div class="form-group">
                    <button class="btn btn-green btn-block" type="submit" id="submit" name="submit" value="submit">
                        Submit <i class="fa fa-arrow-circle-right"></i>
                    </button>
                </div>
                {form_close()}

            </div>
    </div>
</div>
</div>
    <div class="col-md-4"></div>
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

