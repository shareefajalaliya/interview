var GetNews = function() {
	"use strict";

	var editScrollerNews = function() {
		$.fn.modalmanager.defaults.resize = true;
		$.fn.modal.defaults.spinner = $.fn.modalmanager.defaults.spinner = '<div class="loading-spinner" style="width: 200px; margin-left: -100px;">' + '<div class="progress progress-striped active">' + '<div class="progress-bar" style="width: 100%;"></div>' + '</div>' + '</div>';
		var $modal = $('#ajax-modal');

		$('.ajax .demo').on('click', function() {
			var srcid = $(this).data("srcid"); 
			$('body').modalmanager('loading');
			setTimeout(function() {
				var url = $("#rootPath").val()+ "admin/news/edit-news";

				var data = {news_id:srcid, 'action': 'get_news'};
				$modal.load(url, data, function() {
					$modal.modal();
				});
			}, 10);
		});
		$modal.on('click', '.update', function() {
			$modal.modal('loading');
			setTimeout(function() {
				$modal.modal('loading').find('.modal-body').prepend('<div class="alert alert-info fade in">' + 'Updated!<button type="button" class="close" data-dismiss="alert">&times;</button>' + '</div>');
			}, 10);
		});
	};
	return {
		init : function() { 
			editScrollerNews();
		}
	};
}(); 

var UpdateNews = function() {
	"use strict";  

	var runFormValidator = function() { 
		var form = $('#news-update-form');

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
				user_id : {
					required : true
				},
				news_details : {
					required : true
				}
			},
			messages: {
				user_id: { 
					required : error_in_the_fieldid.replace("fieldid", $("#user_id").data('lang')) 
				},
				news_details: { 
					required : error_in_the_fieldid.replace("fieldid", $("#news_details").data('lang')) 
				}
			},
			submitHandler: function (form) { 
				$.ajax(
				{
					type: "POST",
					cache: false,
					url: $('#rootPath').val() + 'admin/news/edit-news',
					data: { 
						news_details: $('#news-update-form #up_news_details').val(), 
						action: 'update_news',
						user_id: $('#news-update-form #up_user_id').val() ,
						news_id: $('#news-update-form #news_id').val() 
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
							$('#ajax-modal').modal('toggle');
							window.location.reload();

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
			runFormValidator();  
		}
	};
}(); 

