
function disableStep1()
{
    $("#next_1" ).prop( "disabled", true );
}

function enableStep1()
{
    $("#next_1" ).prop( "disabled", false );
}

function disableStep2()
{
    $("#next_2" ).prop( "disabled", true );
}

function enableStep2()
{
    $("#next_2" ).prop( "disabled", false );
}


function checkStep1(sponsor, position, placement)
{
    if (sponsor == 1 && placement == 1 && position == 1)
    {
        enableStep1();
    } else
    {
        disableStep1();
    }
}

$(document).ready(function()
{
    var rootPath = $("#rootPath").val();
    var mlmPlan = $("#mlmPlan").val();
    var userNameConfig = $("#userNameConfig").val();
    var userNameMinLength = $("#user_name_min_length").val();

    var sponsorCheck = 0,
    positionCheck = 1,
    placementCheck = 0

    if (mlmPlan != "Binary") {
        positionCheck = 1;
    }


    $("#sponsor_username").blur(function()
    {
        var sponsorName = $('#sponsor_username').val(); 
        var checkUserAvailable = rootPath + "register/checkUsernameAvailability";

        $( '#placement_user_name' ).val(null) ;
        
        $("#spinner_sponsor").addClass("fa-spin fa-cog blue-color");
        $("#message_box").removeClass();
        $("#message_box").addClass('messagebox');
        $("#message_box").html(checking_sponser_user_name).show().fadeTo(1, 1);
        $("#sponsor_username").attr("disabled", true);
        $("#sponsor_full_name").closest(".form-group").remove();

        $.post(checkUserAvailable, {username: $('#sponsor_username').val()}, function(data)
        {
            if (data.success) 
            {
                $("#message_box").fadeTo(1, 0.1, function()
                { 
                    $("#spinner_sponsor").removeClass("fa-spin fa-cog");
                    $(this).html('<span class="help-block"> <i class="symbol ok">'+ sponser_name_validated +' </i></span>').show().fadeTo(1, 1);
                    $(this).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
                    getSponsorFullname(sponsorName); 
                    $("#sponsor_username").attr("disabled", false); 

                    sponsorCheck = 1; 

                    checkStep1(sponsorCheck, positionCheck, placementCheck);
                });

            } else {
                $("#message_box").fadeTo(1, 0.1, function()
                {
                    $("#spinner_sponsor").removeClass("fa-spin fa-cog");
                    var error = "<span class='help-block'><i class='fa fa-times fa-lg'></i> "+ invalid_sponser_user_name +"</span>";
                    $(this).html(error).show().fadeTo(1, 1);
                    $(this).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                    $("#sponsor_username").attr("disabled", false);

                    sponsorCheck = 0;
                    checkStep1(sponsorCheck, positionCheck, placementCheck);
                });

            }
        });
    }); 

    $( "#placement_user_name" ).blur( function( )
    {
        var placementName = $( '#placement_user_name' ).val(); 
        var checkUserAvailable = rootPath + "register/checkPlacementAvailability";

        $("#spinner_placement").addClass("fa-spin fa-cog blue-color");
        $("#message_placement").removeClass();
        $("#message_placement").addClass('messagebox');
        $("#message_placement").html(checking_placement_user_name).show().fadeTo(1, 1);
        $("#placement_user_name").attr("disabled", true);
        $("#placement_full_name").closest(".form-group").remove();

        $.post(checkUserAvailable, { placement_user_name: $('#placement_user_name').val(), sponsor_username: $('#sponsor_username').val()}, function(data)
        {
            if (data.success) 
            {
                $("#message_placement").fadeTo(1, 0.1, function()
                { 
                    $("#spinner_placement").removeClass("fa-spin fa-cog");
                    $(this).html('<span class="help-block"> <i class="symbol ok">'+ placement_name_validated +' </i></span>').show().fadeTo(1, 1);
                    $(this).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
                    getPlacementFullname(placementName);

                    $("#placement_user_name").attr("disabled", false);

                    placementCheck = 1;
                    checkStep1(sponsorCheck, positionCheck, placementCheck);
                });

            } else {
                $("#message_placement").fadeTo(1, 0.1, function()
                {
                    $("#spinner_placement").removeClass("fa-spin fa-cog");
                    var error = "<span class='help-block'><i class='fa fa-times fa-lg'></i> "+ invalid_sponser_user_name +"</span>";
                    $(this).html(error).show().fadeTo(1, 1);
                    $(this).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                    $("#placement_user_name").attr("disabled", false);

                    placementCheck = 0;
                    checkStep1(sponsorCheck, positionCheck, placementCheck);
                });

            }
        });
    });  
    function getSponsorFullname(sponsorName)
    {
        var html;

        var getSponsorNameUrl = rootPath + "register/getUserFullName";
        $.post(getSponsorNameUrl, {sponsor_user_name: sponsorName}, function(data)
        {
            $("#sponsor_full_name").closest('.form-group').remove();
            html = "<div class='form-group'>  <label class='col-sm-3 control-label' for='sponsor_full_name'>" + sponsor_full_name + ":<font color='#ff0000'>*</font></label> <div class='col-sm-8'><input tabindex='2' type='text' name='sponsor_full_name' id='sponsor_full_name' autocomplete='Off' value='" + data + "' readonly='true' class='form-control'/></div></div>";
            $("#sponsor_username").closest('.form-group').after(html);
        });
    }

    function getPlacementFullname(placementName)
    {
        var html,
        getPlacementNameUrl = rootPath + "register/getUserFullName";
        $.post(getPlacementNameUrl, {sponsor_user_name: placementName}, function(data)
        {
            $("#placement_full_name").closest('.form-group').remove();
            html = "<div class='form-group'>  <label class='col-sm-3 control-label' for='placement_full_name'>" + placement_full_name + ":<font color='#ff0000'>*</font></label> <div class='col-sm-8'><input tabindex='2' type='text' name='placement_full_name' id='placement_full_name' autocomplete='Off' value='" + data + "' readonly='true' class='form-control'/></div></div>";
            $("#placement_user_name").closest('.form-group').after(html);
        });
    }

    $("#user_name").blur(function()
    {

        if ($('#user_name').val().length >= userNameMinLength && userNameConfig)
        { 
            $("#spinner_username").addClass("fa-spin fa-cog blue-color");
            $("#error_username").html(checking_username_availability).show().fadeTo(1, 1);
            $("#error_username").closest('.form-group').removeClass('has-success').removeClass('has-error').find('.symbol').removeClass('ok')
            $("#user_name").attr("disabled", true);

            var userNameAvailability = rootPath + "register/checkUsernameAvailability"
            $.post(userNameAvailability, {username: $('#user_name').val()}, function(data)
            {
                if (data.success)  
                {
                    $("#error_username").fadeTo(1, 0.1, function() 
                    { 
                        $("#spinner_username").removeClass("fa-spin fa-cog");
                        var error = "<span class='help-block'><i class='fa fa-times fa-lg'></i> "+ user_name_not_available +"</span>";
                        $(this).html(error).show().fadeTo(1, 1);
                        $(this).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                        $("#user_name").attr("disabled", false);
                        disableStep2();
                    });
                }
                else 
                {
                    $("#error_username").fadeTo(1, 0.1, function()  
                    { 
                        $("#spinner_username").removeClass("fa-spin fa-cog");
                        $(this).html('<span class="help-block"> <i class="symbol ok">'+ user_name_available +' </i></span>').show().fadeTo(1, 1);
                        $(this).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
                        $("#user_name").attr("disabled", false);
                        enableStep2();
                    });
                }
            });
        }
    });

});

$("#user_name_wallet").blur(function()
{
    var rootPath = $("#rootPath").val();
    var validationError = 0;

    if ($("#user_name_wallet").val() == '') {
        validationError = 1;

        $("#error_wallet_username").fadeTo(1, 0.1, function()
        { 
            $("#spinner_wallet_username").removeClass("fa-spin fa-cog");
            $(this).html('<span class="help-block"><i class="fa fa-times fa-lg"></i> '+ user_name_cannot_be_null +' </span>').show().fadeTo(1, 1);
            $(this).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
        });
    }

    if (validationError != 1)
    {
        var userNameAvailability = rootPath + "register/checkUsernameAvailability" 

        $("#spinner_wallet_username").addClass("fa-spin fa-cog");
        $("#error_wallet_username").html(checking_username_availability).show().fadeTo(1, 1);
        $("#error_wallet_username").closest('.form-group').removeClass('has-success').removeClass('has-error').find('.symbol').removeClass('ok')
        
        $.post(userNameAvailability, {username: $('#user_name_wallet').val()}, function(data)
        {
            if (data.success) 
            {
                $("#error_wallet_username").fadeTo(1, 0.1, function()  
                { 
                    $("#spinner_wallet_username").removeClass("fa-spin fa-cog");
                    $(this).html('<span class="help-block"><i class="symbol ok"></i> '+ user_name_available +' </span>').show().fadeTo(1, 1);
                    $(this).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
                });
            }else{
                $("#error_wallet_username").fadeTo(1, 0.1, function() 
                { 

                    $("#spinner_wallet_username").removeClass("fa-spin fa-cog");
                    $(this).html('<span class="help-block"> <i class="fa fa-times fa-lg">'+ user_name_not_available +'</i> </span>').show().fadeTo(1, 1);
                    $(this).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                });
            }
        });
    }
});