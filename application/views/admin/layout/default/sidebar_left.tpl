
<nav id="pageslide-left" class="pageslide inner hidden-print">
	<div class="navbar-content">
		<!-- start: SIDEBAR -->
		<div class="main-navigation left-wrapper transition-left">
			<div class="navigation-toggler hidden-sm hidden-xs">
				<a href="#main-navbar" class="sb-toggle-left">
				</a>
			</div>
			<div class="">
					{* <img src="{assets_url()}website/img/logos/logo.png" alt="{log_user_name()}" width="250px"> *}

			</div>

			<!-- start: MAIN NAVIGATION MENU --> 
			{include file="admin/layout/{theme_folder( 'admin' )}/menu.tpl"}
			<!-- end: MAIN NAVIGATION MENU -->

		</div>
		<!-- end: SIDEBAR -->
	</div>
	<div class="slide-tools">
		<div class="col-xs-6 text-left no-padding">
			<a class="btn btn-sm status" href="#">
				Status <i class="fa fa-dot-circle-o text-green"></i> <span>Online</span>
			</a>
		</div>
		<div class="col-xs-6 text-right no-padding">
			<a class="btn btn-sm log-out text-right" href="{base_url()}login/logout">
				<i class="fa fa-power-off"></i> Log Out
			</a>
		</div>
	</div>
</nav>