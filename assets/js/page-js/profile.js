var ChangeAdminPasswordValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var form = $('#pass_admin_change');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) { 
                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")|| element.next().hasClass('input-group-btn')) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                current_pass : {
                    required : true
                },
                new_pass : {
                    required : true
                },
                con_pass : {
                    required : true
                }
            },
            messages: {

               current_pass: { 
                required : error_in_the_fieldid.replace("fieldid", $("#current_pass").data('lang')) 
            },
            new_pass: { 
                required : error_in_the_fieldid.replace("fieldid", $("#new_pass").data('lang'))
            },  
            con_pass: { 
                required : error_in_the_fieldid.replace("fieldid", $("#con_pass").data('lang'))
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


var ChangeUserPasswordValidation = function() {
    "use strict";
    var runFormValidator = function() {
        var form = $('#pass_user_change');

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
                user_name : {
                    required : true
                },
                new_usr_pass : {
                    required : true
                },
                current_pass : {
                    required : true 
                },
                con_pass : {
                    required : true 
                },
                new_pass : { 
                    required : true 
                },
                con_usr_pass : {
                    required : true
                }
            },
            messages: {
                user_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#user_name").data('lang')) 
                }, 
                new_usr_pass: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#new_usr_pass").data('lang')) 
                }, 
                current_pass: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#current_pass").data('lang')) 
                },
                new_pass: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#new_pass").data('lang'))
                },  
                con_pass: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#con_pass").data('lang'))
                },
                con_usr_pass: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#con_usr_pass").data('lang'))
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

var UserSecurityPinValidation = function() {
    "use strict";
    var runFormValidator = function() {
        var form = $('#send_pin'),
        errorHandler = $('.errorHandler', form);

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
                user_name_for_mail : {
                    required : true
                }
            },
            messages: {

             user_name_for_mail: { 
                required : error_in_the_fieldid.replace("fieldid", $("#user_name_for_mail").data('lang'))
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


var AdminSecurityPinValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var form = $('#pin_admin_change');

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
                current_pin : {
                    required : true
                },
                new_pin : {
                    required : true
                },
                con_pin : {
                    required : true
                }
            },
            messages: {

                current_pin: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#current_pin").data('lang'))
                },
                new_pin: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#new_pin").data('lang'))
                },
                con_pin: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#con_pin").data('lang'))
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

var UserSecurityPinValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var form = $('#pin_user_change'),
        errorHandler = $('.errorHandler', form);

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
                user_name : {
                    required : true
                },
                new_user_pin : {
                    required : true
                },
                con_user_pin : {
                    required : true
                }
            },
            messages: {

                user_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#user_name").data('lang'))
                },
                new_user_pin: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#new_user_pin").data('lang'))
                },
                con_user_pin: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#con_user_pin").data('lang'))
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

var ChangeUserNameValidation = function() {
    "use strict";
    var runFormValidator = function() {
        var form = $('#user_name_change');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                user_name : {
                    required : true
                },
                new_user_name : {
                    required : true
                }
            },
            messages: {

                user_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#user_name").data('lang'))
                },  
                new_user_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#new_user_name").data('lang'))
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

var UserValidation = function() {
    "use strict";
    var runFormValidator = function() {
        var form = $('#user_form');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } 
                else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                }else {
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

var UserPinValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var form = $('#pin_user_change'),
        errorHandler = $('.errorHandler', form);

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
                current_pin : {
                    required : true
                },
                new_pin : {
                    required : true
                },
                con_pin : {
                    required : true
                }
            },
            messages: {
                current_pin: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#current_pin").data('lang'))
                }, new_pin: { 
                 required : error_in_the_fieldid.replace("fieldid", $("#new_pin").data('lang'))
             }, con_pin: { 
                 required : error_in_the_fieldid.replace("fieldid", $("#con_pin").data('lang')) 
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

var ProfileValidation = function() { 
    "use strict";
    var runFormValidator = function() { 
        var form = $('#user_wise');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")|| element.next().hasClass('input-group-btn')) {
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

    var runBlockingFormValidator = function() { 
        var form = $('#blocking_form');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")|| element.next().hasClass('input-group-btn')) {
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
    var drawActivityGraph = function() { 
        var generalInfo = jQuery.parseJSON($('#graphValues').val()) ; 
        
        if ($('#activity_bar').length){ 
            Morris.Bar({
                element: 'activity_bar',
                data: generalInfo,
                xkey: 'history',
                ykeys: ['count'],
                labels: ['Count'],
                barRatio: 0.4,
                barColors: ['#3498DB', '#26B99A', '#34495E', '#ACADAC'],
                xLabelAngle: 35,
                hideHover: 'auto',
                resize: true
            });

        }   

    };
    
    var runCopyRefferralUrl = function() {
        $("#copy-refferal-url").click(function() {
            var $temp = $("<input>");
            $("body").append($temp);
            $temp.val($(this).data("link")).select();
            document.execCommand("copy");
            $temp.remove();
            return false;
        });
    };
    
    return {
        init: function() {
            runFormValidator();
            runBlockingFormValidator();
            drawActivityGraph();
            runCopyRefferralUrl();
        }
    };
}(); 

var EditProfileValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var form = $('#edit_profile');

        $.validator.addMethod("FullDate", function () {
            if ($("#day").val() != "" && $("#month").val() != "" && $("#year").val() != "") {
                var dateOgj = [$("#day").val(), $("#month").val(), $("#year").val()];
                var d = new Date(dateOgj[2] + '/' + dateOgj[1] + '/' + dateOgj[0]);
                return !!(d && (d.getMonth() + 1) == dateOgj[1] && d.getDate() == Number(dateOgj[0]));
            } else {
                return false;
            }
        }, error_select_year_month_day);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") {
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "day" || element.attr("name") == "month" || element.attr("year") == "yyyy") {
                    error.insertAfter($(element).closest('.form-group').children('div'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',
            rules: {
                first_name: {
                    required: true,
                    minlength: 2,
                },
                mobile: {
                    required: true,
                    minlength: 6,
                },
                security_pin: {
                    required: true
                },
                year:"FullDate"
            },
            messages: {
                first_name: { 
                    minlength : error_atleast_number.replace("number_required", "{0}"),
                    required : error_in_the_fieldid.replace("fieldid", $("#first_name").data('lang')) 
                },
                email: { 
                    minlength : error_atleast_number.replace("number_required", "{0}"),
                    required : error_in_the_fieldid.replace("fieldid", $("#email").data('lang')) 
                },
                mobile: { 
                    minlength : error_atleast_number.replace("number_required", "{0}"),
                    required : error_in_the_fieldid.replace("fieldid", $("#mobile").data('lang')) 
                }
            },
            groups: {
                DateofBirth: "day month year",
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

var UpdateDocuments = function() {
    "use strict";  

    var runPassportValidator = function() { 
        var form = $('#passport_doc');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")|| element.next().hasClass('input-group-btn')) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                passport_doc_name : {
                    required : true
                }
            },
            messages: {
                passport_doc_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#passport_doc_name").data('lang')) 
                }
            },
            submitHandler: function (form) { 
                $.ajax(
                {
                    type: "POST",
                    cache: false,
                    url: $('#rootPath').val() + 'admin/profile/documentUpdate',
                    data: { 
                        passport_doc_name: $('#passport_doc_name').val(), 
                        action: 'passport_doc_name',
                        user_id: $('#enc_id').val() 
                    }, 
                    success: function (response) { 
                        toastr.options = {
                            "closeButton": false,
                            "positionClass": "toast-top-right",
                            "onclick": null,
                            "showDuration": "1000",
                            "hideDuration": "1000",
                            "timeOut": "5000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut"
                        }
                        if (response.success) {
                            toastr['success']( response.msg);
                        } else{

                            toastr['error']( response.msg);
                        } 
                    } 
                });
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

    var runGovDocValidator = function() { 
        var form = $('#gov_doc');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")|| element.next().hasClass('input-group-btn')) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                gov_doc_name : {
                    required : true
                }
            },
            messages: {
                gov_doc_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#gov_doc_name").data('lang')) 
                }
            },
            submitHandler: function (form) { 
                $.ajax(
                {
                    type: "POST",
                    cache: false,
                    url: $('#rootPath').val() + 'admin/profile/documentUpdate',
                    data: { 
                        gov_doc_name: $('#gov_doc_name').val(), 
                        action: 'gov_doc_name',
                        user_id: $('#enc_id').val() 
                    }, 
                    success: function (response) { 
                        toastr.options = {
                            "closeButton": false,
                            "positionClass": "toast-top-right",
                            "onclick": null,
                            "showDuration": "1000",
                            "hideDuration": "1000",
                            "timeOut": "5000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut"
                        }
                        if (response.success) {
                            toastr['success']( response.msg);
                        } else{

                            toastr['error']( response.msg);
                        } 
                    } 
                });
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

    var runAddressDocValidator = function() { 
        var form = $('#address_doc');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                } else if (element.hasClass("date-picker")|| element.next().hasClass('input-group-btn')) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',

            rules : {
                address_doc_name : {
                    required : true
                }
            },
            messages: {
                address_doc_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#address_doc_name").data('lang')) 
                }
            },
            submitHandler: function (form) { 
                $.ajax(
                {
                    type: "POST",
                    cache: false,
                    url: $('#rootPath').val() + 'admin/profile/documentUpdate',
                    data: { 
                        address_doc_name: $('#address_doc_name').val(), 
                        action: 'address_doc_name',
                        user_id: $('#enc_id').val() 
                    }, 
                    success: function (response) { 
                        toastr.options = {
                            "closeButton": false,
                            "positionClass": "toast-top-right",
                            "onclick": null,
                            "showDuration": "1000",
                            "hideDuration": "1000",
                            "timeOut": "5000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut"
                        }
                        if (response.success) {
                            toastr['success']( response.msg);
                        } else{

                            toastr['error']( response.msg);
                        } 
                    } 
                });
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
        init : function() {
            runPassportValidator(); 
            runGovDocValidator(); 
            runAddressDocValidator(); 
        }
    };
}(); 


var UIModals = function() {
    "use strict";  
    var initModals = function() {
        $.fn.modalmanager.defaults.resize = true;
        $.fn.modal.defaults.spinner = $.fn.modalmanager.defaults.spinner = '<div class="loading-spinner" style="width: 200px; margin-left: -100px;">' + '<div class="progress progress-striped active">' + '<div class="progress-bar" style="width: 100%;"></div>' + '</div>' + '</div>';
        var $modal = $('#ajax-modal');

        $('.ajax .demo').on('click', function() {
            var user_id = $(this).data("user_id"); 
            $('body').modalmanager('loading');
            setTimeout(function() {
                var url = $("#rootPath").val()+ "admin/profile/show_documents";

                var data = {user_id:user_id};
                $modal.load(url, data, function() {
                    $modal.modal();
                });
            }, 1000);
        });
    };  
    return {
        init : function() {
            initModals(); 
        }
    };
}(); 

