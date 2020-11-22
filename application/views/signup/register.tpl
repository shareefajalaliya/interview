<!DOCTYPE html> 
<html lang="en"> 
<head>
    <title>Registration</title>
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
<body class = "signup">
    <br><br>
    



<div style="display:none;">
    <span id="error_the_fieldid_field_is_required">{lang('error_the_fieldid_field_is_required')}</span>
  <span id="error_atleast_number">{lang('error_atleast_number')}</span>
  <span id="error_enter_greater_number">{lang('error_enter_greater_number')}</span>
</div>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="panel panel-white">
            <div class="panel-heading border-light">
                <h6 class="panel-title">
                    <i class="fa fa-thumbs-up fa-lg blue-color" >
                        Registration
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
                        User Name <span class="symbol required"></span>
                    </label>
                    <input type="text"  class="form-control" id="user_name" name="user_name" autocomplete="off" value="{set_value('user_name')}" >
                    {form_error("user_name")}
                </div>
                <div class="form-group">
                    <label class="control-label">
                        E-mail <span class="symbol required"></span>
                    </label>
                    <input type="email"  class="form-control" id="email" name="email" autocomplete="off" value="{set_value('email')}">
                    {form_error("email")}
                </div>
                <div class="form-group">
                    <label class="control-label">
                        City <span class="symbol required"></span>
                    </label>
                    <input type="text"  class="form-control" id="city" name="city" autocomplete="off" value="{set_value('city')}">
                    {form_error("city")}
                </div>
                <div class="form-group">
                    <label class="control-label">
                        Date of birth <span class="symbol required"></span>
                    </label>
                    <input type="date"  class="form-control" id="dob" name="dob" autocomplete="off" value="{set_value('dob')}">
                    {form_error("dob")}
                </div>
                <div class="form-group">
                    <label class="control-label">
                        Password <span class="symbol required"></span>
                    </label>
                    <input type="password"  class="form-control" id="password" name="password" autocomplete="off" value="{set_value('password')}">
                    {form_error("password")}
                </div>
                <div class="form-group">
                    <label class="control-label">
                        Confirm Password <span class="symbol required"></span>
                    </label>
                    <input type="password"  autocomplete="off" class="form-control" id="c_password" name="c_password" value="{set_value('c_password')}">
                    {form_error("c_password")}
                </div>
                <div class="form-group">
                    <button class="btn btn-green btn-block" type="submit" id="registration" name="registration" value="registration">
                        Submit <i class="fa fa-arrow-circle-right"></i>
                    </button>
                </div>
                {form_close()}

            </div>
        </div>
    </div>
    <div class="col-md-2"></div>
</div>


    <!-- start: MAIN JAVASCRIPTS -->
    <script src="{assets_url()}plugins/j-Query/jquery-2.1.1.min.js"></script>
    <script src="{assets_url()}plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
    <script src="{assets_url()}plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="{assets_url()}plugins/blockUI/jquery.blockUI.js"></script>
    <script src="{assets_url()}plugins/iCheck/jquery.icheck.min.js"></script>
    <script src="{assets_url()}plugins/moment/min/moment.min.js"></script>
    <script src="{assets_url()}plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
    <script src="{assets_url()}plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
    <script src="{assets_url()}plugins/bootbox/bootbox.min.js"></script>
    <script src="{assets_url()}plugins/jquery.scrollTo/jquery.scrollTo.min.js"></script>
    <script src="{assets_url()}plugins/ScrollToFixed/jquery-scrolltofixed-min.js"></script>
    <script src="{assets_url()}plugins/jquery.appear/jquery.appear.js"></script>
    <script src="{assets_url()}plugins/jquery-cookie/jquery.cookie.js"></script>
    <script src="{assets_url()}plugins/velocity/jquery.velocity.min.js"></script>
    <script src="{assets_url()}plugins/TouchSwipe/jquery.touchSwipe.min.js"></script>
    <script src="{assets_url()}plugins/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="{assets_url()}js/main.js"></script>
    <script src="{base_url()}jsloader/lang_common.js"></script>


    <!-- end: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->

    <!-- start: FOR THIS PAGE ONLY -->
    {if $lang_file}
    <script type="text/javascript" src="{base_url()}jsloader/lang_{$lang_file}.js" ></script>
    {/if}
    {footer_files()}
    <!-- end: FOR THIS PAGE ONLY -->

    <!-- start: CORE JAVASCRIPTS  -->
    <script src="{assets_url()}js/main.js"></script>
    <!-- end: CORE JAVASCRIPTS  -->
    <script>
        jQuery(document).ready(function() {
            Main.init();
        });
    </script>