
<!-- end: PAGE CONTENT-->
</div>
<div class="subviews">
	<div class="subviews-container"></div>
</div>
</div>
<!-- end: PAGE -->
</div>
<!-- end: MAIN CONTAINER -->
<!-- start: FOOTER -->
<footer class="inner hidden-print">
	<div class="footer-inner">
		<div class="pull-left">
			{$smarty.now|date_format:"%Y"} &copy; {$COMPANY_NAME}
		</div>
		<div class="pull-right">
			<span class="go-top"><i class="fa fa-chevron-up"></i></span>
		</div>
	</div>
</footer>
<!-- end: FOOTER -->
	
	<!-- end: SUBVIEW SAMPLE CONTENTS -->
</div>
<!-- start: MAIN JAVASCRIPTS --> 
	<!--[if gte IE 9]><!-->


	<!-- start: MAIN JAVASCRIPTS -->
	<script src="{assets_url()}plugins/j-Query/jquery-2.1.1.min.js"></script>
	<script src="{assets_url()}plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
	<script src="{assets_url()}plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="{assets_url()}plugins/blockUI/jquery.blockUI.js"></script>
	<script src="{assets_url()}plugins/iCheck/jquery.icheck.min.js"></script>
	<script src="{assets_url()}plugins/moment/min/moment.min.js"></script>
	<script src="{assets_url()}plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
	<script src="{assets_url()}plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
	<script src="{assets_url()}plugins/bootbox/bootbox.min.js"></script>
	<script src="{assets_url()}plugins/jquery.scrollTo/jquery.scrollTo.min.js"></script>
	<script src="{assets_url()}plugins/ScrollToFixed/jquery-scrolltofixed-min.js"></script>
	<script src="{assets_url()}plugins/jquery.appear/jquery.appear.js"></script>
	<script src="{assets_url()}plugins/jquery-cookie/jquery.cookie.js"></script>
	<script src="{assets_url()}plugins/velocity/jquery.velocity.min.js"></script>
	<script src="{assets_url()}plugins/TouchSwipe/jquery.touchSwipe.min.js"></script>
	<script src="{assets_url()}plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="{assets_url()}js/main.js"></script>
	<script src="{base_url()}jsloader/lang_common.js"></script>


	<!-- end: JAVASCRIPTS REQUIRED FOR SUBVIEW CONTENTS -->

	<!-- start: FOR THIS PAGE ONLY -->
	{if $lang_file}
	<script type="text/javascript" src="{base_url()}jsloader/lang_{$lang_file}.js" ></script>
	{/if}
	{footer_files()}
	<!-- end: FOR THIS PAGE ONLY -->

	<!-- start: CORE JAVASCRIPTS  -->
	<script src="{assets_url()}js/main.js"></script>
	<!-- end: CORE JAVASCRIPTS  -->
	<script>
		jQuery(document).ready(function() {
			Main.init();
		});
	</script>