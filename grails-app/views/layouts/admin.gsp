<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>
			<g:layoutTitle default="Live Fans"/>
		</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- Bootstrap -->
		<asset:stylesheet src="lib/metronic/style.css"/>
		<asset:stylesheet src="layout/admin.css"/>
		<asset:stylesheet src="lib/awesome/css/font-awesome.min.css"/>
		<asset:javascript src="lib/bootstrap/bootstrap.min.js"/>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<asset:javascript src="lib/bootstrap/respond.min.js"/>
		<![endif]-->		
		<g:layoutHead/>
	</head>
	<body>
		<!-- Static navbar -->
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/">
						<asset:image src="logolf1.fw.png"/>
						Fanaticness
					</a>
				</div>
				<div class="navbar-collapse collapse">
					<sec:ifLoggedIn>
						<ul class="nav navbar-nav pull-right">
							<g:render template="/user/notificationsmenu"/>
							<g:render template="/user/usermenu"/>
						</ul>
					</sec:ifLoggedIn>
					<sec:ifNotLoggedIn>
						<g:render template="/user/loginmenu"/>
					</sec:ifNotLoggedIn>
				</div>
				<!--/.navbar-collapse -->
			</div>
		</div>
		<div class="clearfix"></div>
		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			<!-- BEGIN SIDEBAR -->
			<div class="page-sidebar-wrapper">
				<div class="page-sidebar navbar-collapse collapse admin-sidebar">
					<!-- BEGIN SIDEBAR MENU -->
					<div class="slimScrollDiv">
						<ul class="page-sidebar-menu">
							<g:render 	template="/includes/adminSideBarMenuItem" 
										model="['controllerName': controllerName, 
												'actionName': actionName,
												'controllerMenu': 'adminTournament',
												'menuLabelCode': 'tournament',
												'menuLabelIcon': 'fa-trophy',
												'controllerMenuActions': ['index','create'],
												'controllerMenuActionsHrefs': ['/admin/tournament/index','/admin/tournament/create'],
												'controllerMenuActionsIcons': ['fa-list','fa-plus'],
												'controllerMenuActionsCodes': ['list','create']
												]" 
							/>
							<g:render 	template="/includes/adminSideBarMenuItem" 
										model="['controllerName': controllerName, 
												'actionName': actionName,
												'controllerMenu': 'adminTournamentStage',
												'menuLabelCode': 'stage',
												'menuLabelIcon': 'fa-sitemap',
												'controllerMenuActions': ['index','create'],
												'controllerMenuActionsHrefs': ['/admin/stage/index','/admin/stage/create'],
												'controllerMenuActionsIcons': ['fa-list','fa-plus'],
												'controllerMenuActionsCodes': ['list','create']
												]" 
							/>						
							<g:render 	template="/includes/adminSideBarMenuItem" 
										model="['controllerName': controllerName, 
												'actionName': actionName,
												'controllerMenu': 'adminMatch',
												'menuLabelCode': 'match',
												'menuLabelIcon': 'fa-play',
												'controllerMenuActions': ['index','create'],
												'controllerMenuActionsHrefs': ['/admin/match/index','/admin/match/create'],
												'controllerMenuActionsIcons': ['fa-list','fa-plus'],
												'controllerMenuActionsCodes': ['list','create']
												]" 
							/>

							<g:render 	template="/includes/adminSideBarMenuItem" 
										model="['controllerName': controllerName, 
												'actionName': actionName,
												'controllerMenu': 'adminPlayer',
												'menuLabelCode': 'player',
												'menuLabelIcon': 'fa-user',
												'controllerMenuActions': ['index','create'],
												'controllerMenuActionsHrefs': ['/admin/player/index','/admin/player/create'],
												'controllerMenuActionsIcons': ['fa-list','fa-plus'],
												'controllerMenuActionsCodes': ['list','create']
												]" 
							/>

							<g:render 	template="/includes/adminSideBarMenuItem" 
										model="['controllerName': controllerName, 
												'actionName': actionName,
												'controllerMenu': 'adminTeam',
												'menuLabelCode': 'team',
												'menuLabelIcon': 'fa-users',
												'controllerMenuActions': ['index','create'],
												'controllerMenuActionsHrefs': ['/admin/team/index','/admin/team/create'],
												'controllerMenuActionsIcons': ['fa-list','fa-plus'],
												'controllerMenuActionsCodes': ['list','create']
												]" 
							/>
							<g:render 	template="/includes/adminSideBarMenuItem" 
										model="['controllerName': controllerName, 
												'actionName': actionName,
												'controllerMenu': 'adminReferee',
												'menuLabelCode': 'referee',
												'menuLabelIcon': 'fa-gavel',
												'controllerMenuActions': ['index','create'],
												'controllerMenuActionsHrefs': ['/admin/referee/index','/admin/referee/create'],
												'controllerMenuActionsIcons': ['fa-list','fa-plus'],
												'controllerMenuActionsCodes': ['list','create']
												]" 
							/>							
							<g:render 	template="/includes/adminSideBarMenuItem" 
										model="['controllerName': controllerName, 
												'actionName': actionName,
												'controllerMenu': 'adminStadium',
												'menuLabelCode': 'stadium',
												'menuLabelIcon': 'fa-home',
												'controllerMenuActions': ['index','create'],
												'controllerMenuActionsHrefs': ['/admin/stadium/index','/admin/stadium/create'],
												'controllerMenuActionsIcons': ['fa-list','fa-plus'],
												'controllerMenuActionsCodes': ['list','create']
												]" 
							/>			
						</ul>
					</div>
					<!-- END SIDEBAR MENU -->
				</div>
			</div>
			<!-- END SIDEBAR -->
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<div class="page-content" style="min-height:932px !important">
					<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
					<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
									<h4 class="modal-title">Modal title</h4>
								</div>
								<div class="modal-body">
									Widget settings form goes here
								</div>
								<div class="modal-footer">
									<button type="button" class="btn blue">Save changes</button>
									<button type="button" class="btn default" data-dismiss="modal">Close</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
					<!-- BEGIN STYLE CUSTOMIZER -->
					<div class="theme-panel hidden-xs hidden-sm">
						<div class="toggler">
						</div>
						<div class="toggler-close">
						</div>
						<div class="theme-options">
							<div class="theme-option theme-colors clearfix">
								<span>
								THEME COLOR
								</span>
								<ul>
									<li class="color-black current color-default" data-style="default">
									</li>
									<li class="color-blue" data-style="blue">
									</li>
									<li class="color-brown" data-style="brown">
									</li>
									<li class="color-purple" data-style="purple">
									</li>
									<li class="color-grey" data-style="grey">
									</li>
									<li class="color-white color-light" data-style="light">
									</li>
								</ul>
							</div>
							<div class="theme-option">
								<span>
								Layout
								</span>
								<select class="layout-option form-control input-small">
									<option value="fluid" selected="selected">Fluid</option>
									<option value="boxed">Boxed</option>
								</select>
							</div>
							<div class="theme-option">
								<span>
								Header
								</span>
								<select class="header-option form-control input-small">
									<option value="fixed" selected="selected">Fixed</option>
									<option value="default">Default</option>
								</select>
							</div>
							<div class="theme-option">
								<span>
								Sidebar
								</span>
								<select class="sidebar-option form-control input-small">
									<option value="fixed">Fixed</option>
									<option value="default" selected="selected">Default</option>
								</select>
							</div>
							<div class="theme-option">
								<span>
								Sidebar Position
								</span>
								<select class="sidebar-pos-option form-control input-small">
									<option value="left" selected="selected">Left</option>
									<option value="right">Right</option>
								</select>
							</div>
							<div class="theme-option">
								<span>
								Footer
								</span>
								<select class="footer-option form-control input-small">
									<option value="fixed">Fixed</option>
									<option value="default" selected="selected">Default</option>
								</select>
							</div>
						</div>
					</div>
					<!-- END STYLE CUSTOMIZER -->
					<!-- BEGIN PAGE HEADER-->
					<div class="row">
						<div class="col-md-12">
							<!-- BEGIN PAGE TITLE & BREADCRUMB-->
							<h3 class="page-title">
								Sidebar Fixed Page <small>sidebar fixed page</small>
							</h3>
							<ul class="page-breadcrumb breadcrumb">
								<li>
									<i class="fa fa-wrench"></i>
									<a href="/admin">Administrators</a>
									<i class="fa fa-angle-right"></i>
								</li>
								<li>
									<a href="/${controllerName}">${controllerName}</a>
									<i class="fa fa-angle-right"></i>
								</li>
								<li>
									<a href="/${controllerName}/${actionName}/">${actionName}</a>
								</li>
							</ul>
							<!-- END PAGE TITLE & BREADCRUMB-->
						</div>
					</div>
					<!-- END PAGE HEADER-->
					<!-- BEGIN PAGE CONTENT-->
					<div class="row">
						<div class="col-md-12">
							<g:layoutBody/>
						</div>
					</div>
					<!-- END PAGE CONTENT-->
				</div>
			</div>
			<!-- END CONTENT -->
		</div>
		<div id="footer">
			<div class="container">
				<p class="text-muted credit">
				<center>&copy; Live Fans ${String.format('%tY', new Date())}</center>
				</p>
			</div>
		</div>
		<script type="text/javascript">
			var handleSidebarAndContentHeight = function () {
			    var content = $('.page-content');
			    var sidebar = $('.page-sidebar');
			    var body = $('body');
			    var height;
			
			    if (body.hasClass("page-footer-fixed") === true && body.hasClass("page-sidebar-fixed") === false) {
			        var available_height = $(window).height() - $('.footer').outerHeight();
			        if (content.height() < available_height) {
			            content.attr('style', 'min-height:' + available_height + 'px !important');
			        }
			    } else {
			        if (body.hasClass('page-sidebar-fixed')) {
			            height = _calculateFixedSidebarViewportHeight();
			        } else {
			            height = sidebar.height() + 20;
			        }
			        if (height >= content.height()) {
			            content.attr('style', 'min-height:' + height + 'px !important');
			        }
			    }
			}
			var handleSidebarMenu = function () {
			    jQuery('.page-sidebar').on('click', 'li > a', function (e) {
			        if ($(this).next().hasClass('sub-menu') == false) {
			            if ($('.btn-navbar').hasClass('collapsed') == false) {
			                $('.btn-navbar').click();
			            }
			            return;
			        }
			
			        if ($(this).next().hasClass('sub-menu.always-open')) {
			            return;
			        }
			
			        var parent = $(this).parent().parent();
			        var the = $(this);
			
			        parent.children('li.open').children('a').children('.arrow').removeClass('open');
			        parent.children('li.open').children('.sub-menu').slideUp(200);
			        parent.children('li.open').removeClass('open');
			
			        var sub = jQuery(this).next();
			        var slideOffeset = -200;
			        var slideSpeed = 200;
			
			        if (sub.is(":visible")) {
			            jQuery('.arrow', jQuery(this)).removeClass("open");
			            jQuery(this).parent().removeClass("open");
			            sub.slideUp(slideSpeed, function () {
			
			                handleSidebarAndContentHeight();
			            });
			        } else {
			            jQuery('.arrow', jQuery(this)).addClass("open");
			            jQuery(this).parent().addClass("open");
			            sub.slideDown(slideSpeed, function () {
			
			                handleSidebarAndContentHeight();
			            });
			        }
			
			        e.preventDefault();
			    });
			}
			
			jQuery(document).ready(function() {     
			handleSidebarMenu();
			});
		</script>	
	</body>
</html>