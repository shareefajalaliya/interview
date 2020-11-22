
var rootPath = $("#rootPath").val();
var ResponderValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var form = $('#auto_responder_form');

        var errorHandler = $('.errorHandler', form);
        form.validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
                    error.insertAfter(element);
                }
            },
            ignore: ':hidden',
            rules : {
                day_number : {
                    required : true,
                    number: true
                },
                heading : {
                    required : true
                },
                message : {
                    required : true
                }

            },
            messages: {
                day_number: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#day_number").data('lang'))
                },
                heading: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#heading").data('lang'))
                },
                message: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#message").data('lang'))
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
 

function chngeAutoType(type){

    if(type == "manual"){
        $(".flip").show();
    }
    else{

        $(".flip").hide();
    }
}