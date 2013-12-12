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
		<asset:stylesheet src="layout/public.css"/>
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
					<a class="navbar-brand" href="/"><asset:image src="logolf1.fw.png"/> Fanaticness</a>
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
		<div  id="wrap" class="container">
			<g:layoutBody/>
		</div>
		<!-- /container -->
		<div id="footer">
			<div class="container">
				<p class="text-muted credit"><center>&copy; Live Fans ${String.format('%tY', new Date())}</center></p>
			</div>
		</div>		
	</body>
</html>