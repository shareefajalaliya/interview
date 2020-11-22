{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/header.tpl"}

<div class="row">

	<div class="col-md-6 col-lg-4 col-sm-6">
		<div class="panel panel-default panel-white core-box">
			<div class="panel-tools">
				<a href="#" class="btn btn-xs btn-link panel-close">
					<i class="fa fa-times"></i>
				</a>
			</div>
			<div class="panel-body no-padding">
				<div class="partition-green padding-20 text-center core-icon">
					<i class="fa fa-child fa-2x icon-big"></i>
				</div> 

				<div class="padding-20 core-content">
					<h3 class="title block no-margin">Total Users</h3>
					<span class="subtitle"> {$total_users} </span>
				</div>
			</div> 
		</div>
	</div>
	<div class="col-md-6 col-lg-4 col-sm-6">
		<div class="panel panel-default panel-white core-box">
			<div class="panel-tools">
				<a href="#" class="btn btn-xs btn-link panel-close">
					<i class="fa fa-times"></i>
				</a>
			</div> 
			<div class="panel-body no-padding">
				<div class="partition-blue padding-20 text-center core-icon">
					<i class="fa fa-child fa-2x icon-big"></i>
				</div> 

				<div class="padding-20 core-content">
					<h3 class="title block no-margin">Confirmed Users</h3>
					<span class="subtitle">{$confirmed_users}</span>
				</div>
			</div> 
		</div>
	</div>
	<div class="col-md-6 col-lg-4 col-sm-6">
		<div class="panel panel-default panel-white core-box">
			<div class="panel-tools">
				<a href="#" class="btn btn-xs btn-link panel-close">
					<i class="fa fa-times"></i>
				</a>
			</div>
			<div class="panel-body no-padding">
				<div class="partition-red padding-20 text-center core-icon">
					<i class="fa fa-child fa-2x icon-big"></i>
				</div>

				<div class="padding-20 core-content">
					<h3 class="title block no-margin">Rejected Users</h3>
					<span class="subtitle"> {$rejected_users} </span>
				</div>
			</div> 
		</div>
	</div>

	
	
</div>


{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/footer.tpl" }


{include file="{log_user_type()}/layout/{theme_folder(log_user_type())}/footer_close.tpl" }