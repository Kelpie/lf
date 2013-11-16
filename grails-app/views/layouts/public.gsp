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
		<asset:stylesheet src="layout/public.css"/>
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
					<a class="navbar-brand" href="/">Live Fans</a>
				</div>
				<div class="navbar-collapse collapse">
					<a href="#" class="btn btn-danger navbar-btn navbar-right"><g:message code="create.free.account"/></a>
					<form class="navbar-form navbar-right">
						<div class="form-group">
							<input type="text" placeholder="<g:message code="email"/>" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" placeholder="<g:message code="password"/>" class="form-control">
						</div>
						<button type="submit" class="btn btn-success"><g:message code="sign.in"/></button>
					</form>
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
		<asset:javascript src="lib/bootstrap/bootstrap.min.js"/>
	</body>
</html>