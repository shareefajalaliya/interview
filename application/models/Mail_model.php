<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Mail_model extends Base_model {

    public $MEMBER_DETAILS;
    public $user_downlines;

    public function __construct() {
        parent::__construct();

    }


    public function sendEmails($type = 'notification', $mail_arr = array()) 
    {
        $user_id = $mail_arr["user_id"];
        $user_email_id = $this->Common_model->getUserEmail($user_id);
        if ($user_email_id == "careers@cgtindia.in" || $user_email_id =="" || !SEND_EMAIL)
        {
            $data["message"] = "Mail Settings is off!";
            return $data;
        }
        $this->load->library('Phpmailer', NULL, 'phpmailer');
        $this->load->model("Settings_model");
        $language_name = "english";
        $this->lang->load('mail', $language_name);
        $user_full_name = $this->Common_model->getFullName($user_id);
        $site_info = $this->Settings_model->getCompanyInformation();
        
        $attachments = NULL;
        $smtp_data = array();
        $mail_details = $this->getMailSettings();

        if ($mail_details['type'] == "smtp") {
            $smtp_data = array(
                "SMTPAuth" => $mail_details['smtp_authentication'],
                "SMTPSecure" => ($mail_details['smtp_protocol'] == "none") ? "" : $mail_details['smtp_protocol'],
                "Host" => $mail_details['smtp_host'],
                "Port" => $mail_details['smtp_port'],
                "Username" => $mail_details['smtp_username'],
                "Password" => $mail_details['smtp_password'],
                "Timeout" => $mail_details['smtp_timeout'],
                //"SMTPDebug" => 3 //uncomment this line to check for any errors
            );
        }

        if($type == "email_invite" || $type == "auto_responder"){
            $mailBodyDetails = $mail_arr['content'];
            $mail_altbody = html_entity_decode($mail_arr['content']);
        }
        else{
            $content = $this->getEmailContent($type);
            $mail_altbody = html_entity_decode($content);
            $mailBodyDetails = $mail_altbody; 
        }

        $mail_to = array("email" => $user_email_id, "name" => $user_full_name);
        $mail_from = array("email" => $site_info['email'], "name" => $site_info['company_name']);
        $mail_reply_to = $mail_from;
        $mail_subject = "Notification";


        $mailBodyHeaderDetails = $this->getHeaderDetails($site_info);
        if ($type == "registration") {
            $user_name = $this->Common_model->idToUserName($user_id);            
            $mailBodyDetails = str_replace("{user_name}", $user_name, $mailBodyDetails);
            $mailBodyDetails = str_replace("{password}", $mail_arr["password"], $mailBodyDetails);
            $mailBodyDetails = str_replace("{otp}", $mail_arr["otp"], $mailBodyDetails);
            $mailBodyDetails = str_replace("{user_name}", $mail_arr["user_name"], $mailBodyDetails);
            $mailBodyDetails = str_replace("{date}", $mail_arr["date"], $mailBodyDetails);
            $mail_subject = "Registration";
        }  
        

        $mailBodyDetails = str_replace("{server_ip}", $this->input->server('REMOTE_ADDR'), $mailBodyDetails);
        $mailBodyDetails = str_replace("{fullname}", $user_full_name, $mailBodyDetails);
        $mailBodyDetails = str_replace("{company_name}", $site_info['company_name'], $mailBodyDetails);
        $mailBodyDetails = str_replace("{company_address}", $site_info['company_address'], $mailBodyDetails);
        $mailBodyDetails = str_replace("{company_email}", $site_info['email'], $mailBodyDetails);
        $mailBodyDetails = str_replace("{company_phone}", $site_info['phone'], $mailBodyDetails); 

        $mailBodyFooterDetails = $this->getFooterDetails($site_info);
        $mailBodyFooterDetails = str_replace("{user_email}", $user_email_id, $mailBodyFooterDetails);
        $mail_full_content = $mailBodyHeaderDetails . $mailBodyDetails . $mailBodyFooterDetails ;
 // print_r($mail_full_content);die();
        $send_mail = $this->phpmailer->send_mail($mail_from, $mail_to, $mail_reply_to, $mail_subject, $mail_full_content, $mail_altbody, $mail_details['type'], $smtp_data, $attachments);
        if (!$send_mail['status']) {
            $data["message"] = "Error: " . $send_mail['ErrorInfo'];
        } else {
            $data["message"] = "Message sent correctly!";
        }
        return $data;
    }

    public function getMailSettings(){
        $smtp_details = array();
        $this->db->select('*');
        $this->db->from('mail_settings');
        $query = $this->db->get();
        foreach($query->result_array() as $row)
        {
            $smtp_details = $row; 
        }
        return $smtp_details;
    }

    public function getHeaderDetails($site_info) {
       $site_logo = $site_info['logo'];
        $company_name = $site_info['company_name'];

        $mailBodyHeaderDetails = '<!DOCTYPE html PUBLIC >
        <html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>'. $company_name .'</title>
        <style type="text/css">#outlook a{padding:0;}
        body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;}
        body{-webkit-text-size-adjust:none;}
        body{margin:0; padding:0;}
        img{border:0; height:auto; line-height:100%; outline:none; text-decoration:none;}
        table td{border-collapse:collapse;}
        #backgroundTable{height:100% !important; margin:0; padding:0; width:100% !important;}
        body, #backgroundTable{background-color:#FAFAFA;}
        #templateContainer{  }
        h1, .h1{color:#202020; display:block; font-family:Arial; font-size:40px; font-weight:bold; line-height:100%; margin-top:2%; margin-right:0; margin-bottom:1%; margin-left:0; text-align:left;}
        h2, .h2{ color:#35bc0c;; display:block; font-family:Arial; font-size:18px; font-weight:bold; line-height:100%; margin-top:2%; margin-right:0; margin-bottom:1%; margin-left:0; text-align:left; }
        h3, .h3{ color:#606060; display:block; font-family:Arial; font-size:16px; font-weight:bold; line-height:100%; margin-top:2%; margin-right:0; margin-bottom:1%; margin-left:0; text-align:left; } 
        h4, .h4{  color:#808080; display:block; font-family:Arial; font-size:14px;  font-weight:bold; line-height:100%; margin-top:2%; margin-right:0; margin-bottom:1%; margin-left:0; text-align:left; }
        #templatePreheader{ background-color:#FAFAFA;} 
        .preheaderContent div{ color:#707070; font-family:Arial; font-size:10px; line-height:100%; text-align:left; } 
        .preheaderContent div a:link, .preheaderContent div a:visited, /* Yahoo! Mail Override */ .preheaderContent div a .yshortcuts /* Yahoo! Mail Override */{ color:#336699;  font-weight:normal; text-decoration:underline; }
        #social div{ text-align:right; }
        #templateHeader{ background-color:#FFFFFF; border-bottom:5px solid #35BC0C; }
        .headerContent{color:#202020; font-family:Arial; font-size:34px; font-weight:bold; line-height:100%;padding:10px;text-align:right;vertical-align:middle;}

        .headerContent a:link, .headerContent a:visited, /* Yahoo! Mail Override */ .headerContent a .yshortcuts /* Yahoo! Mail Override */{ color:#336699; font-weight:normal; text-decoration:underline;}
        #headerImage{
        height:auto;
        max-width:600px !important; }
        #templateContainer, .bodyContent{background-color:#ffff;}
        .bodyContent div{color:#505050;font-family:Arial; font-size:14px;line-height:150%; text-align:justify;}
        .bodyContent div a:link, .bodyContent div a:visited, /* Yahoo! Mail Override */ .bodyContent div a .yshortcuts /* Yahoo! Mail Override */{color:#336699;font-weight:normal;text-decoration:underline; }
        .bodyContent img{ display:inline; height:auto;  }
        #templateSidebar{background-color:#FDFDFD; }
        .sidebarContent{ border-right:1px solid #35BC0C;}   
        .sidebarContent div{ color:#505050;font-family:Arial;font-size:10px;line-height:150%;text-align:left; }
        .sidebarContent div a:link, .sidebarContent div a:visited,  .sidebarContent div a .yshortcuts  {ncolor:#336699;nfont-weight:normal;ntext-decoration:underline; }
        .sidebarContent img{ display:inline; height:auto; } 
        #templateFooter{ background-color:#FAFAFA; border-top:3px solid #909090; }
        .footerContent div{ color:#707070; font-family:Arial; font-size:11px; line-height:125%; text-align:justify; }
        .footerContent div a:link, .footerContent div a:visited, .footerContent div a .yshortcuts { color:#35BC0C; font-weight:normal; text-decoration:underline; }
        .footerContent img{ display:inline; }
        #social{ background-color:#FFFFFF;border:0; } 
        #social div{ text-align:left; } 
        #utility{ background-color:#ffffff; border-top:0; } 
        #utility div{ text-align:left; }
        #monkeyRewards img{ max-width:170px !important; }
        .templateDataTable{ background-color:#FFFFFF; border:1px solid #35BC0C; }
        .dataTableHeading{ background-color:#FCFEFF; color:#336699; font-family:Helvetica; font-size:14px; font-weight:bold; line-height:150%; text-align:left;border-left: 10px solid #35BC0C;
        } 
        .dataTableHeading a:link, .dataTableHeading a:visited, .dataTableHeading a .yshortcuts { color:#FFFFFF; font-weight:bold; text-decoration:underline;
        } 
        .dataTableContent{ border-top:1px dashed #35BC0C; border-bottom:0; color:#202020; font-family:Helvetica; font-size:12px; font-weight:bold; line-height:150%; text-align:left;
        } 
        .dataTableContent a:link, .dataTableContent a:visited, .dataTableContent a .yshortcuts { color:#202020; font-weight:bold; text-decoration:underline;
        }
        .templateButton{ -moz-border-radius:3px; -webkit-border-radius:3px;  border:1px solid #35bc0c; border-collapse:separate !important; border-radius:34px; }

        .templateButton:hover{ background-color:#ffff; border-color:#35bc0c}

        .templateButton, .templateButton a:link, .templateButton a:visited, .templateButton a .yshortcuts { color:#35bc0c; font-family:Arial; font-size:15px; font-weight:bold; letter-spacing:-.5px;  line-height:50%; text-align:center; text-decoration:none;}
        .CToWUd:hover {
            background-color: #35bc0c;
            border-radius:30px;
        }
        .server-ip {
            color: #35bc0c;
        }
        .body-table {
            border-radius: 10px !important;
            border: 8px solid #ececec;
        }
        </style>
        </head>
        <body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="backgroundTable">
        <tr>
        <td align="center" valign="top">
        <table border="0" cellpadding="0" cellspacing="0" width="600" id="templateContainer" class="body-table">
        <tr>
        <td align="center" valign="top">
        <table border="0" cellpadding="0" cellspacing="0" width="600" id="templateHeader">
        <tr>
        <td class="headerContent">

        <img src="' . assets_url() . 'website/img/logos/logo-2-dark.png'.'" style="max-width:180px;" id="headerImage campaign-icon" mc:label="header_image" mc:edit="header_image" mc:allowtext />
        </td>
        <td class="headerContent" width="100%" style="padding-left:10px; padding-right:20px;">
        </td>
        </tr>
        </table>
        </td>
        </tr>';
        return $mailBodyHeaderDetails;
    }

    function getEmailContent($type='NA'){
        $content  =NULL;
        $this->db->select('content');
        $this->db->where('type', $type);
        $query = $this->db->get('mail_contents');
        foreach ($query->result_array() as $row) {
            $content = $row['content'];
        }

        if ($type == "registration") {
            $mailBodyDetails = '<tr>
            <td style="padding: 30px"> 
            <h3 style="color:#53565a;">'. lang("mail_congratulation") .' </h3>
            <p style="color:#53565a;line-height:180%;font-family:Open Sans,Helvetica,sans-serif;font-size:14px;font-weight:normal;margin:0 0 15px;padding:0">
            '. lang("mail_dear") .' <strong>{user_name},</strong>
            <br>
            <br>
            <strong> Congratulation on your decision </strong>
            <br />
            All our members are offered with innovative solutions to have a long-term vision and security for a better future. We hope you find your new role rewarding and challenging while being a part of our growing and dynamic team here! We’re honored to have you with us! Welcome Aboard!
            <br />
            
            <table width="100%" cellspacing="0" cellpadding="10" border="1">
            <tbody>
            <tr>
            <th scope="col"  mc:edit="data_table_heading00" width="50%" valign="top">
            '. 'User Name' .'
            </th>
            <th scope="col" mc:edit="data_table_heading01" width="50%" valign="top" >
            {user_name}
            </th> 
            </tr>
            <tr mc:repeatable="">
            <td  mc:edit="data_table_content00" valign="top">
            '. 'Password' .'
            </td>
            <td  mc:edit="data_table_content01" valign="top">
            {password}
            </td>
            </tr>
            <tr mc:repeatable="">
            <td  mc:edit="data_table_content00" valign="top">
            OTP 
            </td>
            <td  mc:edit="data_table_content01" valign="top">
            {otp}
            </td>
            </tr>
            <tr mc:repeatable="">
            <td  mc:edit="data_table_content00" valign="top">
            Joining Date 
            </td>
            <td  mc:edit="data_table_content01" valign="top">
            '. date('Y-m-d').'
            </td>
            </tr>
            <tr mc:repeatable="">
            <td  mc:edit="data_table_content00" valign="top">
            Referral Link 
            </td>
            <td  mc:edit="data_table_content01" valign="top">
            '. base_url() .'referral/{user_name}
            </td>
            </tr>
            </tbody>
            </table>

            <h5 class="m_-4808757542982372404red" style="font-size:11px;letter-spacing:1px;text-transform:uppercase;color:#c01818">
            <a href="'. base_url() .'" target="_blank">Access Account</a>
            </h5>
            </p>';
        }
        
        return $mailBodyDetails;

    }

    public function getFooterDetails($site_info) {
        $company_name = $site_info['company_name'];
        $company_mail = $site_info['email'];
        $company_phone = $site_info['phone']; 
        $admin_user_name = $this->Common_model->getAdminUsername(); 
        $mailBodyFooterDetails ='
        <tr>
        <td align="center" valign="top">
        <table border="0" cellpadding="0" cellspacing="0" width="600" id="templateFooter">
        <tr>
        <td valign="top" class="footerContent">
        <table border="0" cellpadding="10" cellspacing="0" width="100%">
        <tr>
        <td id="social" align="center" width="100%" valign="top"> 
        <a style="border:0;text-decoration:none" href="https://www.facebook.com/mountassets/"> <img src="' . assets_url() . 'images/mail/fb.png" style="vertical-align:middle;border:none;color:#818181;font-size:9px" class="CToWUd"> 
        </a> 
        <a style="border:0;text-decoration:none" href="https://twitter.com/mountassets/"> 
        <img src="' . assets_url() . 'images/mail/twitter.png" style="vertical-align:middle;border:none;color:#818181;font-size:9px" class="CToWUd"> 
        </a> 

        <a style="border:0;text-decoration:none" href="https://youtube.com/"> 
        <img src="' . assets_url() . 'images/mail/youtube.png" style="vertical-align:middle;border:none;color:#818181;font-size:9px" class="CToWUd"> 
        </a> 
        <a style="border:0;text-decoration:none" href="https://linkedin.com/in/mountassets-760681150/"> 
        <img src="' . assets_url() . 'images/mail/linkedin.png" style="vertical-align:middle;border:none;color:#818181;font-size:9px" class="CToWUd"> 
        </a> 
        </td>
        </tr>
        <tr>
        <td valign="top" width="350">
        <div mc:edit="std_footer">
        <em>Copyright &copy; '. date('Y') . " ". $company_name.' , All rights reserved.</em>
        <br />
        <br />
        CONFIDENTIALITY NOTICE:
        This message contains confidential information and is intended only for the intended recipients. If you are not an intended recipient you are not authorized to disseminate, distribute or copy this e-mail. Please notify '. $company_mail .' immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. E-mail transmission cannot be guaranteed to be secure or error-free as information could be intercepted, corrupted, lost, destroyed, arrive late or incomplete. Therefore Mr. '. $admin_user_name .' nor '. $company_name .' does not accept liability for any errors or omissions in the contents of this message, which arise as a result of e-mail transmission. If verification is required please request a hard-copy version
        <br />
        </div>
        </td>
        </tr>
        <tr>
        <td colspan="2" valign="middle" id="utility">

        <div mc:edit="std_utility">   <p>
        You are receiving this message because your email id <a href="{user_email}" target="_blank">{user_email}</a> is registered to get updates from '. $company_name .' 
        </p>
        &nbsp;<a href="#">unsubscribe from this list</a> | <a href="#">update subscription preferences</a>&nbsp;
        </div>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
        <br />
        </td>
        </tr>
        </table>
        </center>
        </body>
        </html>';
        return $mailBodyFooterDetails;
    }
}
