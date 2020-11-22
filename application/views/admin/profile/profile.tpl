{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/header.tpl"}
<link rel="stylesheet" type="text/css" href="{assets_url('plugins/sweetalert/lib/sweet-alert.css')}">

{* <div style="display:none;">
    <span id="base_url">{$BASE_URL}</span>
    <span id="text_are_you_sure">{lang('text_are_you_sure')}</span>
    <span id="text_you_will_not_recover_efile">{lang('text_you_will_not_recover_efile')}</span>
    <span id="text_yes_delete_it">{lang('text_yes_delete_it')}</span>
    <span id="text_no_cancel_please">{lang('text_no_cancel_please')}</span>
    <span id="text_deleted">{lang('text_deleted')}</span>
    <span id="text_efile_deleted">{lang('text_efile_deleted')}</span>
    <span id="text_cancelled">{lang('text_cancelled')}</span>
    <span id="text_efile_safe">{lang('text_efile_safe')}</span>
    <span id="text_yes_edit_it">{lang('text_yes_edit_it')}</span>
    <span id="text_deactivated">{lang('text_deactivated')}</span>
    <span id="text_rank_deactivated">{lang('text_rank_deactivated')}</span>
     <span id="error_the_fieldid_field_is_required">{lang('error_the_fieldid_field_is_required')}</span>
    <span id="error_atleast_number">{lang('error_atleast_number')}</span>
    <span id="error_enter_greater_number">{lang('error_enter_greater_number')}</span>
</div> *}
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-white">
            <div class="panel-heading border-light">
                <h6 class="panel-title">
                    <i class="fa fa-user fa-lg blue-color" >
                        User Details
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
                {if count($user_details)>0}

                <div class="table-responsive">
                    <table class="table table-hover" id="exportTable">
                        <thead>
                            <tr>
                                <th class="center">#</th>
                                
                                <th>User Name</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Email</th>
                                <th>DOB</th>
                                <th>ID Proof</th>
                                <th>Joining Date</th>
                        
                            </tr>
                        </thead>
                        <tbody>
                            {form_open('','' )}
                            {foreach $user_details as $v} 

                            <tr>
                                <td class="center">{counter}
                                </td>
                                
                                <td>{$v.user_name}</td>
                                <td>{$v.first_name}</td>
                                <td >{$v.address},<br>
                                    {$v.city} - {$v.state},<br>
                                {$v.country} - {$v.zip_code}</td>
                                <td >{$v.email}</td>
                                <td>{$v.dob}</td>
                                <td><img alt="" src="{assets_url()}images/profile_pic/{$v.id_proof}" height="100px" width="100px" ></td>
                                <td>{$v.date}</td>

                               
                                
                            </tr>
                            {/foreach}
                            {form_close()}

                        </tbody>
                    </table>

                </div>
                {else}
                <div class="alert alert-block alert-warning fade in">
                    <p>
                        <h3 class="text-center"> 
                            <i class="fa fa-exclamation"> {lang('text_no_transfer_details_found')}</i>
                        </h3>
                    </p>
                </div>
                {/if}

            </div>
        </div>
    </div>
</div>




{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/footer.tpl"}
<script src="{assets_url('js/ui-notifications.js')}"></script>
<script src="{assets_url('plugins/sweetalert/lib/sweet-alert.min.js')}"></script>
{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/footer_close.tpl"}  