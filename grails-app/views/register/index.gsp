<html>
	<head>
		<title><g:message code='spring.security.ui.login.title'/></title>
		<meta name='layout' content='register'/>
		<asset:stylesheet src="lib/jquery/jquery-ui-1.9.2.custom.css"/>
		<asset:stylesheet src="lib/awesome/css/font-awesome.min.css"/>
		<asset:stylesheet src="page/register.css"/>
	</head>
	<body>
		<div id="login-container">
			<div id="login">
				<h3><asset:image src="logolf2.fw.png"/> Fanaticness</h3>
				<h5><g:message code='social.login'/></h5>
				<br>
				<div class="row">		
					<div class="col-sm-6">
						<a href="#" class="btn btn-twitter btn-block">
							<i class="fa fa-twitter"></i>
							&nbsp;&nbsp;<g:message code='login.with.twitter'/>
						</a>
					</div> <!-- /.col -->
					<div class="col-sm-6">
						<a href="/" class="btn btn-facebook btn-block">
							<i class="fa fa-facebook"></i>
							&nbsp;&nbsp;<g:message code='login.with.facebook'/>
						</a>
					</div> <!-- /.col -->
				</div> <!-- /.row -->
				<br>
				<span class="text-muted"><g:message code='or.enter.your.information'/></span>

				<form action='${postUrl}' method='POST' id="login-form" autocomplete='off' class="form">

					<div class="form-group">
						<label for="login-username"><g:message code='spring.security.ui.login.username'/></label>
						<input type="text" class="${flash.message?'has-error ':''}form-control" id="login-username" name="j_username" placeholder="<g:message code='spring.security.ui.login.username'/>" size="20">
					</div>

					<div class="form-group">
						<label for="login-password"><g:message code='spring.security.ui.login.password'/></label>
						<input type="password" name="j_password" class="${flash.message?'has-error ':''}form-control" id="login-password" placeholder="<g:message code='spring.security.ui.login.password'/>" size="20">
					</div>
					<div class="form-group text-muted">
						<input type="checkbox"  name="${rememberMeParameter}" id="remember_me" checked="checked" />
						<g:message code='springSecurity.login.remember.me.label'/>
												
					</div>
					<div class="form-group">
						<button type="submit" id="login-btn" class="btn btn-primary btn-block"><g:message code='spring.security.ui.login.login'/> &nbsp; <i class="fa fa-play-circle"></i></button>
					</div>
					<g:if test="${flash.message}">
						<div class="alert alert-danger">
							${flash.message}
						</div>	
					</g:if>
				</form>
				<a href="/register/forgotPassword" class="btn btn-default">
					<g:message code='spring.security.ui.login.forgotPassword'/>
				</a>
			</div>
			<a href="/register" id="signup-btn" class="btn btn-lg btn-block">
				<g:message code='spring.security.ui.login.register'/>
			</a>
		</div> <!-- /#login-container -->
		
		<asset:javascript src="lib/jquery/jquery-ui-1.9.2.custom.min.js"/>
		<script type="text/javascript">
			var Login = function () {
				"use strict";
				
				return { init: init };

				function init () {
					$.support.placeholder = false;
					var test = document.createElement('input');
					if('placeholder' in test) $.support.placeholder = true;
					
					if (!$.support.placeholder) {
						$('#login-form').find ('label').show ();			
					}
				}
			} ();

			$(function () {
				Login.init ();
			});
		</script>	
	
	</body>
</html>

<!--

<html>

<head>
	<meta name='layout' content='register'/>
	<title><g:message code='spring.security.ui.register.title'/></title>
</head>

<body>

<p/>

<s2ui:form width='650' height='300' elementId='loginFormContainer'
           titleCode='spring.security.ui.register.description' center='true'>

<g:form action='register' name='registerForm'>

	<g:if test='${emailSent}'>
	<br/>
	<g:message code='spring.security.ui.register.sent'/>
	</g:if>
	<g:else>

	<br/>

	<table>
	<tbody>

		<s2ui:textFieldRow name='username' labelCode='user.username.label' bean="${command}"
                         size='40' labelCodeDefault='Username' value="${command.username}"/>

		<s2ui:textFieldRow name='email' bean="${command}" value="${command.email}"
		                   size='40' labelCode='user.email.label' labelCodeDefault='E-mail'/>

		<s2ui:passwordFieldRow name='password' labelCode='user.password.label' bean="${command}"
                             size='40' labelCodeDefault='Password' value="${command.password}"/>

		<s2ui:passwordFieldRow name='password2' labelCode='user.password2.label' bean="${command}"
                             size='40' labelCodeDefault='Password (again)' value="${command.password2}"/>

	</tbody>
	</table>

	<s2ui:submitButton elementId='create' form='registerForm' messageCode='spring.security.ui.register.submit'/>

	</g:else>

</g:form>

</s2ui:form>

<script>
$(document).ready(function() {
	$('#username').focus();
});
</script>

</body>
</html>

-->
