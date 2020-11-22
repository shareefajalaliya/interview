<div id="pageslide-right" class="pageslide slide-fixed inner">
	<div class="right-wrapper">
		<ul class="nav nav-tabs nav-justified" id="sidebar-tab">
			<li class="active">
				<a href="#notifications" role="tab" data-toggle="tab"><i class="fa fa-bookmark "></i></a>
			</li>
			<li>
				<a href="#settings" role="tab" data-toggle="tab"><i class="fa fa-gear"></i></a>
			</li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="notifications">
				<div class="notifications">
					<div class="pageslide-title">
						You have 11 notifications
					</div>
					<ul class="pageslide-list">

						{foreach $unread_mail_details as $v}

						<li>
							<a href="javascript:void(0)">
								<span class="label label-primary"><i class="fa fa-comment"></i></span> <span class="message"> {$v.subject}</span> <span class="time"> {$v.date|timeAgo} ago</span>
							</a>
						</li>
						{/foreach} 
					</ul>
					<div class="view-all">
						<a href="{base_url()}{log_user_type()}/mail/inbox">
							See all notifications <i class="fa fa-arrow-circle-o-right"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="settings">
				{form_open('', 'name="sidebar_update"')}
				<h5 class="sidebar-title">General Settings</h5>
				<ul class="media-list">
					<li class="media">
						<div class="checkbox sidebar-content">
							<label>
								<input type="checkbox" name="referal_status" value="1" class="green" {if $module_status['referal_status'] }checked="checked" {/if}>
								{lang('text_referal_status')}
							</label>
						</div>
					</li>
					<li class="media">
						<div class="checkbox sidebar-content">
							<label>
								<input type="checkbox" name="binary_commission" value="1" class="green" {if $module_status['binary_commission'] }checked="checked" {/if}>
								{lang('text_binary_commission')}
							</label>
						</div>
					</li>
					<li class="media">
						<div class="checkbox sidebar-content">
							<label>
								<input type="checkbox" name="daily_commission" value="1" class="green" {if $module_status['daily_commission'] }checked="checked" {/if}>
								{lang('text_daily_commission')}
							</label>
						</div>
					</li> 
				</ul> 
				<div class="sidebar-content">
					<button class="btn btn-success" type="submit" name="sidebar_update" value="sidebar_update">
						<i class="icon-settings"></i> Save Changes
					</button>
				</div>
				{form_close()}
			</div>
		</div> 
	</div>
</div>