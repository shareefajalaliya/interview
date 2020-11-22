{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/header.tpl"}
<link rel="stylesheet" href="{assets_url()}plugins/dropify/dist/css/dropify.min.css">


<div class="row">
    <div class="col-md-4">
        <div class="panel panel-white">
            <div class="panel-heading border-light">
                <h6 class="panel-title">
                    <i class="fa fa-users fa-lg blue-color" >
                        My Profile
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
                {form_open('','id="pass_admin_change" name="pass_admin_change" class="form-login"' )}

                <form>
						<div class="row mb-2 text-center">
							<div class="col-auto"><img class="img-70 rounded-circle" alt="" src="{assets_url()}images/profile_pic/{$user_details['user_photo']}" height="200px" width="200px"></div>
							<div class="col">
								<h3 class="mb-1">{$user_details['user_name']}</h3>
								
							</div>
						</div>
						
					</form>
                {form_close()}

            </div>
        </div>
    </div>

    <div class="col-md-8">
        <div class="panel panel-white">
            <div class="panel-heading border-light">
                <h6 class="panel-title">
                    <i class="fa fa-users fa-lg blue-color" >
                        Update Profile
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
                {form_open_multipart('','id="pass_admin_change" name="pass_admin_change" class="form-login"' )}

                <div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label class="form-label">User Name</label>
								<input class="form-control" type="text" placeholder="User Name" name="user_name" id="user_name" value="{$user_details['user_name']}" readonly="">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group mb-3">
								<label class="form-label">E-mail</label>
								<input class="form-control" type="text" placeholder="E-mail" name="email" id="email" value="{$user_details['email']}" readonly="">
							</div>
						</div>
						
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label class="form-label">Name</label>
								<input class="form-control" type="text" placeholder="Name" name="name" id="name" value="{$user_details['name']}">
							</div>
						</div>
						<div class="col-sm-6 col-md-6">
							<div class="form-group mb-3">
								<label class="form-label">DOB</label>
								<input class="form-control" type="date" name="dob" id="dob" placeholder="Date of birth" value="{$user_details['dob']}">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label class="form-label">City</label>
								<input class="form-control" type="text" placeholder="City" name="city" id="city" value="{$user_details['city']}">
							</div>
						</div>
						<div class="col-sm-6 col-md-6">
							<div class="form-group mb-3">
								<label class="form-label">Mobile</label>
								<input class="form-control" type="text" name="mobile" id="mobile" placeholder="Mobile" value="{$user_details['mobile']}" minlength="10" maxlength="10">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12">
						<div class="form-group">
							<label for="address">Address</label>
							<textarea required class="form-control" id="address" autocomplete="off" name="address" >{$user_details['address']}</textarea> 
						</div> 
						</div>

					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12"> 
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">User Profile</h4>
									<label for="input-file-now-custom-1"></label>
									<input type="file" id="input-file-now-custom-1" name="userfile" class="dropify" data-default-file="{assets_url('images/profile_pic/')}{$user_details['user_photo']}" />
									
								</div>

							</div>

						</div>
					</div>

						
					<div class="form-actions">
						<div class="text-right">

							<button type="submit" class="btn btn-primary" id="update" name="update" value="sucess">Update Profile </button>

						</div>
					</div>
                {form_close()}

            </div>
        </div>
    </div>
</div>

{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/footer.tpl"}
<script src="{assets_url()}plugins/dropify/dist/js/dropify.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
        // Basic
        $('.dropify').dropify();

        // Translated
        $('.dropify-fr').dropify({
        	messages: {
        		default: 'Glissez-déposez un fichier ici ou cliquez',
        		replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
        		remove: 'Supprimer',
        		error: 'Désolé, le fichier trop volumineux'
        	}
        });

        // Used events
        var drEvent = $('#input-file-events').dropify();

        drEvent.on('dropify.beforeClear', function(event, element) {
        	return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
        });

        drEvent.on('dropify.afterClear', function(event, element) {
        	alert('File deleted');
        });

        drEvent.on('dropify.errors', function(event, element) {
        	console.log('Has Errors');
        });

        var drDestroy = $('#input-file-to-destroy').dropify();
        drDestroy = drDestroy.data('dropify')
        $('#toggleDropify').on('click', function(e) {
        	e.preventDefault();
        	if (drDestroy.isDropified()) {
        		drDestroy.destroy();
        	} else {
        		drDestroy.init();
        	}
        })
    });
</script>
{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/footer_close.tpl"}  