var JoiningReportValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var errorHandler = $('.errorHandler', $('#joining_form'));
        $('#joining_form').validate({
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
                }
                else {
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

var CommissionReportValidation = function() {
    "use strict";
    var runFormValidator = function() {

        var errorHandler = $('.errorHandler', $('#comission_form'));
        $('#comission_form').validate({
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
                }
                else {
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

var RanakAchiverReportValidation = function() {
    "use strict";
    var runFormValidator = function() 
    {
        var errorHandler = $('.errorHandler', $('#rank_achiver'));
        $('#rank_achiver').validate({
            errorElement: "span", 
            errorClass: 'help-block',
            errorPlacement: function (error, element) {

                if (element.attr("type") == "radio" || element.attr("type") == "checkbox") { 
                    error.insertAfter($(element).closest('.form-group').children('div').children().last());
                } else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
                    error.appendTo($(element).closest('.form-group').children('div'));
                }else if (element.hasClass("date-picker")) {
                    error.insertAfter($(element).closest('.input-group'));
                } else {
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

var TopRecruiterReportValidation = function() {
    "use strict";
    var runFormValidator = function() 
    {
        var errorHandler = $('.errorHandler', $('#top_rec_form'));
        $('#top_rec_form').validate({
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
                }
                else {
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


