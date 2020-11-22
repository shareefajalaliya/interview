<!DOCTYPE html>
<html lang="en">
<head>
    <title>{$title} | {$COMPANY_NAME}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="shortcut icon" href="{assets_url()}images/logo/{$site_details['favicon']}" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/css/util.css">
    <link rel="stylesheet" type="text/css" href="{assets_url()}leads/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

    <div class="bg-container-contact100" style="background-image: url(../../assets/leads/images/bg-01.jpg);">
        <div class="contact100-header flex-sb-m">
            <a href="#" class="contact100-header-logo">
                <img src="{assets_url()}images/logo/{$site_details['logo']}" alt="{$COMPANY_NAME}"/>
            </a>

            <div>
                <button class="btn-show-contact100">
                    Contact Us
                </button>
            </div>
        </div>
    </div>

    <div class="container-contact100">

        <div class="wrap-contact100">
            <button class="btn-hide-contact100">
                <i class="zmdi zmdi-close"></i>
            </button>

            <div class="contact100-form-title" style="background-image: url(../../assets/leads/images/bg-02.jpg);">
                <span>Contact Us</span>
            </div>
            {form_open('','class="contact100-form validate-form"')} 

            <div class="contact100-header">
                {if $box && $flashdata}  
                <p>             
                    {$flashdata}
                </p> 
                {/if}
            </div>


            {form_error('name')}
            <div class="wrap-input100 validate-input">
                <input id="name" class="input100" type="text" name="name" placeholder="Full name">
                <span class="focus-input100"></span>
                <label class="label-input100" for="name">
                    <span class="lnr lnr-user m-b-2"></span>
                </label>
            </div>


            {form_error('email')}
            <div class="wrap-input100 validate-input">
                <input id="email" class="input100" type="text" name="email" placeholder="Eg. example@email.com">
                <span class="focus-input100"></span>
                <label class="label-input100" for="email">
                    <span class="lnr lnr-envelope m-b-5"></span>
                </label>
            </div>


            {form_error('phone')}
            <div class="wrap-input100 validate-input">
                <input id="phone" class="input100" type="text" name="phone" placeholder="Eg. +1 800 000000">
                <span class="focus-input100"></span>
                <label class="label-input100" for="phone">
                    <span class="lnr lnr-smartphone m-b-2"></span>
                </label>
            </div>


            {form_error('message')}
            <div class="wrap-input100 validate-input">
                <textarea id="message" class="input100" name="message" placeholder="Your comments..."></textarea>
                <span class="focus-input100"></span>
                <label class="label-input100 rs1" for="message">
                    <span class="lnr lnr-bubble"></span>
                </label>
            </div>

            <div class="container-contact100-form-btn">
                <button class="contact100-form-btn" type="submit" value="contact_us" name="contact_us">
                  {lang('button_send_now')}
              </button>
          </div>
          {form_close()}
      </div>
  </div>



  <!--===============================================================================================-->
  <script src="{assets_url()}leads/vendor/jquery/jquery-3.2.1.min.js"></script>
  <!--===============================================================================================-->
  <script src="{assets_url()}leads/vendor/animsition/js/animsition.min.js"></script>
  <!--===============================================================================================-->
  <script src="{assets_url()}leads/vendor/bootstrap/js/popper.js"></script>
  <script src="{assets_url()}leads/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="{assets_url()}leads/vendor/daterangepicker/moment.min.js"></script>
  <script src="{assets_url()}leads/js/main.js"></script>

</body>
</html>
