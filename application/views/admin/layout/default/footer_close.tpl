<script type="text/javascript">
	
	$('.edit-row').click(function()
	{	
		var srcLink = $(this).data('srclink');
		var srcId = $(this).data('srcid');
   
		swal({
			title: text_are_you_sure,
			text: you_want_edit_this,
			type: "warning",
			showCancelButton: true,
			confirmButtonColor: "#DD6B55",
			confirmButtonText: text_yes_edit_it,
			cancelButtonText: text_no_cancel_please,
			closeOnConfirm: false,
			closeOnCancel: false
		},
		function (isConfirm) {
			if (isConfirm) {
				console
				document.location.href = '{base_url()}' + '{log_user_type()}' + "/" +  srcLink + "/" + srcId; 
			} else {
				swal(text_cancelled, your_content_safe, "error");
			}
		});
	});

	$('.delete-row').click(function()
	{
		var srcLink = $(this).data('srclink');
		var srcId = $(this).data('srcid');
		swal({
			title: text_are_you_sure,
			text: you_want_delete_this,
			type: "warning",
			showCancelButton: true,
			confirmButtonColor: "#DD6B55",
			confirmButtonText: text_yes_inactivate_it,
			cancelButtonText: text_no_cancel_please,
			closeOnConfirm: false,
			closeOnCancel: false
		},
		function (isConfirm) {
			if (isConfirm) {
				document.location.href = '{base_url()}' + '{log_user_type()}' + "/" + srcLink + "/" + srcId; 
			} else {
				swal(text_cancelled, your_content_safe, "error");
			}
		});
	});
</script>
 
{* <script src="{assets_url()}js/custom.js"></script> *}
</body>
<!-- end: BODY -->
</html>