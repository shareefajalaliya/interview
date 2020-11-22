
var ModuleConfig = function() {
    "use strict";
    var runMakeSwitch = function() {
        $("input[type='checkbox'].make-switch").bootstrapSwitch(); 
    };

    var runSwitchChange = function() { 


        $("input[type='checkbox'].candidate-result").on('switchChange.bootstrapSwitch', function(event, state)
        {  
            var newState = (state == true) ? 'Passed' : 'Failed' ;
            var title = $(this).data("lang");
            var infoBox = 'success';  
            var Url = $("#rootPath").val() + "admin/entrance/candidate-result";  
            $.post(Url,{
                candi_id: this.id,
                candi_name: $(this).data("lang"),
                status: state
            },function(data){ 
                if(data){
                    if(state == true){
                        infoBox = 'info';
                    }

                    var $toast = toastr[infoBox]('Updated to <b>' + newState + '</b> Succesfully', title);
                }else{
                    var $toast = toastr["error"]("Error on updation", title);
                }
            });
        });
        $("input[type='checkbox'].candidate-admission").on('switchChange.bootstrapSwitch', function(event, state)
        {  
            var newState = (state == true) ? 'Yes' : 'No' ;
            var title = $(this).data("lang");
            var infoBox = 'success';  
            var Url = $("#rootPath").val() + "admin/entrance/candidate-admission";  
            $.post(Url,{
                candi_id: this.id,
                candi_name: $(this).data("lang"),
                status: state
            },function(data){ 
                if(data){
                    if(state == true){
                        infoBox = 'info';
                    }

                    var $toast = toastr[infoBox]('Updated to <b>' + newState + '</b> Succesfully', title);
                }else{
                    var $toast = toastr["error"]("Error on updation", title);
                }
            });
        });

        $("input[type='checkbox'].student-upgrade").on('switchChange.bootstrapSwitch', function(event, state)
        {  
            var newState = (state == true) ? 'Upgraded' : 'Downgraded' ;
            var title = $(this).data("lang");
            var infoBox = 'success';  
            var Url = $("#rootPath").val() + "admin/students/upgrade-student";  
            $.post(Url,{
                st_id: this.id,
                st_name: $(this).data("lang"),
                class_id: $(this).data("class"),
                status: state
            },function(data){ 
                if(data){
                    if(state == true){
                        infoBox = 'info';
                    }

                    var $toast = toastr[infoBox]('Updated to <b>' + newState + '</b> Succesfully', title);
                }else{
                    var $toast = toastr["error"]("Error on updation", title);
                }
            });
        });


    };

    return {
        init: function() {
            runMakeSwitch();
            runSwitchChange();
        }
    };
}(); 
var RankValidation = function() {
    "use strict";
    var runFormValidator = function() {


      var form = $('#rank-form');

      var errorHandler = $('.errorHandler', form);
      form.validate({
        errorElement: "span", 
        errorClass: 'help-block',
        errorPlacement: function (error, element) {

            if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                error.insertAfter($(element).closest('.form-group').children('div').children().last());
            } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                error.appendTo($(element).closest('.form-group').children('div'));
            } else if (element.hasClass("date-picker")) {
                error.insertAfter($(element).closest('.input-group'));
            } else {
                error.insertAfter(element);
            }
        },
        ignore: ':hidden',

        rules : {
            rank_name : {
                required : true
            },
            referral_count : {
                minlength : 1,
                required : true
            },
            rank_bonus : {
                required : true
            },
            sort_order : {
                min : 1,
                required : true,
                digits: true
            }
        },
        messages: {
            rank_name: { 
                minlength : error_atleast_number.replace("number_required", "{0}"),
                required : error_in_the_fieldid.replace("fieldid", $("#rank_name").closest('.form-group').find(".control-label").html()),
            },
            referral_count: { 
                minlength : error_atleast_number.replace("number_required", "{0}"),
                required : error_in_the_fieldid.replace("fieldid", $("#referral_count").closest('.form-group').find(".control-label").html()),
            },
            rank_bonus: { 
                minlength : error_atleast_number.replace("number_required", "{0}"),
                required : error_in_the_fieldid.replace("fieldid", $("#rank_bonus").closest('.form-group').find(".control-label").html()),
            },
            sort_order: { 
                min : error_enter_greater_number.replace("number_required", "{0}"),
                required : error_in_the_fieldid.replace("fieldid", $("#sort_order").closest('.form-group').find(".control-label").html())
            }
        },
        highlight: function (element) {
            $(element).closest('.help-block').removeClass('valid');

            $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
        },
        unhighlight: function (element) { 
            $(element).closest('.form-group').removeClass('has-error');

        },
        success: function (label, element) {
            label.addClass('help-block valid');
            $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
        }
    });
  };
  var runTouchSpin = function() {
    $("input[name='sort_order']").TouchSpin({
        verticalbuttons: true
    });
};
return {
    init: function() {
        runTouchSpin();
        runFormValidator();
    }
};
}(); 

var LevelCommissionValidation = function() {
    "use strict";

    var runFormValidator = function() {

        var form = $('#depth_form');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                depth_ceiling : {
                    required : true
                },
                width_ceiling : {
                    required : true
                }
            },
            messages: {
                depth_ceiling: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#package_name").closest('.form-group').find(".control-label").html()),
                },
                width_ceiling: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#package_value").closest('.form-group').find(".control-label").html()),
                }
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');

                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
            },
            unhighlight: function (element) { 
                $(element).closest('.form-group').removeClass('has-error');

            },
            success: function (label, element) {
                label.addClass('help-block valid');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });
    };
    var runTouchSpin = function() {
        $("input[name='depth_ceiling']").TouchSpin({
            verticalbuttons: true
        });
        $("input[name='width_ceiling']").TouchSpin({
            verticalbuttons: true
        });
    };
    return {
        init: function() {
           runFormValidator();
           runTouchSpin();
       }
   };
}();

var NewsValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var form = $('#news_form');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                }  else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',
            rules : {
                news_title : {
                    required : true
                },
                news_description : {
                    required : true
                },
                sort_order : {
                    min : 1,
                    required : true,
                    digits: true
                }
            },
            messages: {
                news_title: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#news_title").closest('.form-group').find(".control-label").html()),
                },
                news_description: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#news_description").closest('.form-group').find(".control-label").html()),
                },
                sort_order: { 
                    min : error_enter_greater_number.replace("number_required", "{0}"),
                    required : error_in_the_fieldid.replace("fieldid", $("#sort_order").closest('.form-group').find(".control-label").html())
                }
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');

                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
            },
            unhighlight: function (element) { 
                $(element).closest('.form-group').removeClass('has-error');

            },
            success: function (label, element) {
                label.addClass('help-block valid');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });
    };
    var runTouchSpin = function() {
        $("input[name='sort_order']").TouchSpin({
            verticalbuttons: true
        });
    };
    return {
        init: function() {
            runFormValidator();
            runTouchSpin();
        }
    };
}();


var PackageValidation = function() {
    "use strict";
    var runFormValidator = function() {


       var form = $('#package_up_form');

       var errorHandler = $('.errorHandler', form);
       form.validate({
        errorElement: "span", 
        errorClass: 'help-block',
        errorPlacement: function (error, element) {

            if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                error.insertAfter($(element).closest('.form-group').children('div').children().last());
            } else if (element.hasClass("touchspin")) {
                error.appendTo($(element).closest('.form-group'));
            }  else if (element.hasClass("date-picker")) {
                error.insertAfter($(element).closest('.input-group'));
            } else {
                error.insertAfter(element);
            }
        },
        ignore: ':hidden',

        rules : {
            package_name : {
                required : true
            },
            package_value : {
                required : true
            },
            pair_value : {
                required : true,
            },
            package_quantity : {
                required : true,
                digits: true
            },
            referral_bonus : {
                required : true,
                digits: true
            },
            sort_order : {
                min : 1,
                required : true,
                digits: true
            }
        },
        messages: {
            package_name: { 
                required : error_in_the_fieldid.replace("fieldid", $("#package_name").closest('.form-group').find(".control-label").html()),
            },
            package_value: { 
                required : error_in_the_fieldid.replace("fieldid", $("#package_value").closest('.form-group').find(".control-label").html()),
            },
            pair_value: { 
                digits: true,
                required : error_in_the_fieldid.replace("fieldid", $("#pair_value").closest('.form-group').find(".control-label").html()),
            },
            package_quantity: { 
                required : error_in_the_fieldid.replace("fieldid", $("#package_quantity").closest('.form-group').find(".control-label").html()),
            },
            referral_bonus: { 
                required : error_in_the_fieldid.replace("fieldid", $("#referral_bonus").closest('.form-group').find(".control-label").html()),
            },

            sort_order: { 
                min : error_enter_greater_number.replace("number_required", "{0}"),
                required : error_in_the_fieldid.replace("fieldid", $("#sort_order").closest('.form-group').find(".control-label").html())
            }
        },
        highlight: function (element) {
            $(element).closest('.help-block').removeClass('valid');

            $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
        },
        unhighlight: function (element) { 
            $(element).closest('.form-group').removeClass('has-error');

        },
        success: function (label, element) {
            label.addClass('help-block valid');
            $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
        }
    });
   };

   var runTouchSpin = function() {
    $("input[name='pair_value']").TouchSpin({
        verticalbuttons: true
    });
    $("input[name='pair_value']").TouchSpin({
        verticalbuttons: true
    });
    $("input[name='package_quantity']").TouchSpin({
        verticalbuttons: true
    });
    $("input[name='referral_bonus']").TouchSpin({
        verticalbuttons: true
    });
    $("input[name='sort_order']").TouchSpin({
        verticalbuttons: true
    });
};

var runSwitchChange = function() { 
    $("input[type='checkbox'].change-pack").on('switchChange.bootstrapSwitch', function(event, state)
    {  
        var packageId = $(this).data('id'); 
        var state = $(this).prop("checked");
        var status = (state == true) ? 'yes' : 'no' ;
        var url = $("#rootPath").val() +$("#logType").val() + "/settings/update_package";  

        $.post(url, 
        {
            package_id: packageId,
            status: status
        },function(data){  
            window.location.reload();
        });
    });
};

var runMakeSwitch = function() {
    $("input[type='checkbox'].change-pack").bootstrapSwitch(); 
};

var runDynamicPackageDetails = function() {

    $('.show_details').click(function(){
        var url = $("#rootPath").val() + "admin/settings/dynamicPackageDetails";  
        $.post(url,{
            package_id: $(this).data('id')
        },function(data){ 
            if(data){ 
                data = JSON.parse(data); 
                var labels = [] , dataset = [];
                $.each( data['graph'], function( key, value ) { 
                    labels.push(key);
                    dataset.push(value.length);

                });

                $("table.package_details").empty();
                $("table.package_details").append(data.tr);

                if ($('#packageChart').length ){ 

                    var ctx = document.getElementById("packageChart");
                    var mybarChart = new Chart(ctx, {
                        type: 'bar',
                        data: {
                            labels: labels,
                            datasets: [{
                                label: '# Sales',
                                backgroundColor: "#03586A",
                                data: dataset
                            }]
                        },

                        options: {
                            scales: {
                                yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                            }
                        }
                    });
                } 

                $('#viewPackageDetails').modal('show');
            }
        });

    });
};

return {
    init: function() {
        runFormValidator();
        runTouchSpin();
        runMakeSwitch();
        runSwitchChange();
        runDynamicPackageDetails();
    }
};
}();

var EventValidation = function() {
    "use strict";
    var runFormValidator = function() {
        var errorHandler = $('.errorHandler', $('#event-management'));
        $('#event-management').validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                }  else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                heading : {
                    minlength : 1,
                    required : true
                },
                message : {
                    minlength : 1,
                    required : true
                },
                start_date : {
                    required : true
                },
                end_date : {
                    required : true,
                }
            },
            messages: {
                heading: { 
                    minlength : error_atleast_number.replace("number_required", "{0}"),
                    required : error_in_the_fieldid.replace("fieldid", $("#heading").closest('.form-group').find(".control-label").html()),
                },
                message: { 
                    minlength : error_atleast_number.replace("number_required", "{0}"),
                    required : error_in_the_fieldid.replace("fieldid", $("#message").closest('.form-group').find(".control-label").html()),
                },
                start_date: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#start_date").closest('.form-group').find(".control-label").html()),
                },
                end_date: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#end_date").closest('.form-group').find(".control-label").html()),
                }
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');

                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
            },
            unhighlight: function (element) { 
                $(element).closest('.form-group').removeClass('has-error');

            },
            success: function (label, element) {
                label.addClass('help-block valid');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });
    };
    return {
        init: function() {
            runFormValidator();
        }
    };
}();

var UploadFileValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var errorHandler = $('.errorHandler', $('#file_form'));
        $('#file_form').validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.hasClass("touchspin")) {
                    error.appendTo($(element).closest('.form-group').children('div'));
                }  else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                doc_title : {
                    required : true
                },
                doc_desc : {
                    required : true
                },

                sort_order : {
                    min : 1,
                    required : true,
                    digits: true
                }
            },
            messages: {
                doc_title: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#doc_title").closest('.form-group').find(".control-label").html()),
                },
                doc_desc: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#doc_desc").closest('.form-group').find(".control-label").html()),
                },
                userfile: { 
                    digits: true,
                    required : error_in_the_fieldid.replace("fieldid", $("#userfile").closest('.form-group').find(".control-label").html()),
                },
                sort_order: { 
                    min : error_enter_greater_number.replace("number_required", "{0}"),
                    required : error_in_the_fieldid.replace("fieldid", $("#sort_order").closest('.form-group').find(".control-label").html())
                }
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');

                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
            },
            unhighlight: function (element) { 
                $(element).closest('.form-group').removeClass('has-error');

            },
            success: function (label, element) {
                label.addClass('help-block valid');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });
    };
    var runTouchSpin = function() {
        $("input[name='sort_order']").TouchSpin({
            verticalbuttons: true
        });
    };
    return {
        init: function() {
            runFormValidator();
            runTouchSpin();
        }
    };
}();

var RankAllocationValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var errorHandler = $('.errorHandler',  $('#rank_alloc_form'));
        $('#rank_alloc_form').validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                user_name : {
                    required : true
                }
            },
            messages: {

                user_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#user_name").data('lang'))
                }
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');

                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
            },
            unhighlight: function (element) { 
                $(element).closest('.form-group').removeClass('has-error');

            },
            success: function (label, element) {
                label.addClass('help-block valid');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });
    };
    return {
        init: function() {

            runFormValidator();
        }
    };
}(); 

var CompanyValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var errorHandler = $('.errorHandler', $('#company_settings_form'));
        $('#company_settings_form').validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                company_name : {
                    required : true
                },
                company_address : {
                    required : true
                },
                email : {
                    required : true
                },
                phone : {
                    required : true
                },
                country_id : {
                    required : true
                },
                default_lang : {
                    required : true
                },
                login_lang : {
                    required : true
                },
                currency_id : {
                    required : true
                },
                maintenance_mode : {
                    required : true
                },
                port : {
                    digits: true
                },
                timeout : {
                    digits: true
                }
            },
            messages: {
                company_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#company_name").data('lang'))
                },
                company_address: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#company_address").data('lang'))
                },
                email: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#email").data('lang'))
                },
                phone: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#phone").data('lang'))
                },
                port : {
                   // digits : error_enter_greater_number.replace("number_required", "{0}"),
               },
               timeout : {
                    // digits : error_enter_greater_number.replace("number_required", "{0}"),                   
                }
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');

                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
            },
            unhighlight: function (element) { 
                $(element).closest('.form-group').removeClass('has-error');

            },
            success: function (label, element) {
                label.addClass('help-block valid');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });
    };
    return {
        init: function() {

            runFormValidator();
        }
    };
}(); 

var LanguageValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var errorHandler = $('.errorHandler', $('#language_form'));
        $('#language_form').validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                name : {
                    required : true
                },
                code : {
                    required : true
                },
                sort_order : {
                    required : true,
                    digits : true
                }
            },
            messages: {
                name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#name").data('lang'))
                },
                code: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#code").data('lang'))
                } ,
                sort_order: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#sort_order").data('lang'))
                } 
            },
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');

                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
            },
            unhighlight: function (element) { 
                $(element).closest('.form-group').removeClass('has-error');

            },
            success: function (label, element) {
                label.addClass('help-block valid');
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            }
        });
    };
    return {
        init: function() {

            runFormValidator();
        }
    };
}(); 