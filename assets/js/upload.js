var abc = 0;      // Declaring and defining global increment variable.
var rootPath = $("#rootPath").val();



$(document).ready(function() { 
	$('#add_more').click(function() {


		var files_count =  $('#filediv .form-group').size();

		var allocate_html ='<div class="form-group"><label>Gallery Image</label><div class="fileupload fileupload-new" data-provides="fileupload"><div class="fileupload-new thumbnail"><img src="'+rootPath+'assets/images/gallery/coming-soon.png" alt=""></div><div class="fileupload-preview fileupload-exists thumbnail"></div><div class="user-edit-image-buttons"><span class="btn btn-azure btn-file"><span class="fileupload-new"><i class="fa fa-picture"></i>Select image</span><span class="fileupload-exists"><i class="fa fa-picture"></i>Change</span><input type="file" id="userfile_' + files_count +'" name ="userfile_' + files_count +'"></span><a href="#" class="btn fileupload-exists btn-red" data-dismiss="fileupload"><i class="fa fa-times"></i>Remove</a></div></div></div>';


		$(this).before($("<div/>", {
			id: 'filediv'
		}).fadeIn('slow').append(allocate_html));
	});
	// Following function will executes on change event of file input to select different file.
	$('body').on('change', '#file', function() {
		if (this.files && this.files[0]) {
			// Incrementing global variable by 1.
			abc += 1; 
			var z = abc - 1;
			var x = $(this).parent().find('#previewimg' + z).remove();
			$(this).before("<div id='abcd" + abc + "' class='abcd'><img id='previewimg" + abc + "' src=''/></div>");
			var reader = new FileReader();
			reader.onload = imageIsLoaded;
			reader.readAsDataURL(this.files[0]);
			$(this).hide();
			$("#abcd" + abc).append($("<img/>", {
				id: 'img',
				src: 'x.png',
				alt: 'delete'
			}).click(function() {
				$(this).parent().parent().remove();
			}));
		}
	});
	// To Preview Image
	function imageIsLoaded(e) {
		$('#previewimg' + abc).attr('src', e.target.result);
	};
	$('#upload').click(function(e) {
		var name = $(":file").val();
		if (!name) {
			alert("First Image Must Be Selected");
			e.preventDefault();
		}
	});
});