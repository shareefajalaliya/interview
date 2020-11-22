
var SendValidation = function() {
    "use strict";
    var runFormValidator = function() { 

        var errorHandler = $('.errorHandler', $('#donation_form'));
        $('#donation_form').validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) 
            {
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
                from_name : {
                    required : true
                },
                to_name : {
                    required : true
                },
                amount : {
                    required : true
                }
            },
            messages: {
                from_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#from_name").data('lang'))
                },  
                to_name: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#to_name").data('lang'))
                },  
                amount: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#amount").data('lang'))
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

var GivenDetailsValidation = function() {
    "use strict";
    var runFormValidator = function() { 

        var errorHandler = $('.errorHandler', $('#search_donation_form'));
        $('#search_donation_form').validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) 
            {
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
                from_date : {
                    required : true
                },
                to_date : {
                    required : true
                }
            },
            messages: {
                from_date: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#from_date").data('lang'))
                },  
                to_date: { 
                    required : error_in_the_fieldid.replace("fieldid", $("#to_date").data('lang'))
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
