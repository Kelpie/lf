<html>
	<head>
		<title><g:message code='spring.security.ui.register.title'/></title>
		<meta name='layout' content='register'/>
		<asset:stylesheet src="lib/jquery/jquery-ui-1.9.2.custom.css"/>
		<asset:stylesheet src="lib/awesome/css/font-awesome.min.css"/>
		<asset:stylesheet src="lib/metronic/style.css"/>
		<asset:stylesheet src="page/register.css"/>
	</head>
	<body>
	<div class="content">
		<form class="register-form" action="/register/register" method="post" novalidate="novalidate" style="display: block;">
			<g:if test='${emailSent}'>
			<br/>
				<g:message code='spring.security.ui.register.sent'/>
			</g:if>
			<g:else>
				
				<br>
				<h3><i class="fa fa-thumbs-o-up" style="color: red;font-size: 30px;"></i>&nbsp;Fanaticness</h3>
				<p><g:message code='spring.security.ui.register.description'/>Enter your personal details below:</p>
				<div class="form-group">
					<label class="control-label visible-ie8 visible-ie9"><g:message code='user.username.label'/></label>
					<div class="<g:hasErrors bean="${command}" field="username">has-error </g:hasErrors>input-icon">
						<i class="fa fa-user"></i>
						<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="<g:message code='user.username.label'/>" name="username" value="${command.username}" />
					</div>
					<g:hasErrors bean="${command}" field="email">
						<span for="username" class="help-block"><g:fieldError bean="${command}" field="username" /></span>
					</g:hasErrors>		
				</div>
				<div class="form-group">
					<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
					<label class="control-label visible-ie8 visible-ie9"><g:message code='user.email.label'/></label>
					<div class="<g:hasErrors bean="${command}" field="email">has-error </g:hasErrors> input-icon">
						<i class="fa fa-envelope"></i>
						<input class="form-control placeholder-no-fix" type="text" placeholder="<g:message code='user.email.label'/>" name="email" value="${command.email}" />
					</div>
					<g:hasErrors bean="${command}" field="email">
						<span for="email" class="help-block"><g:fieldError bean="${command}" field="email" /></span>
					</g:hasErrors>					
				</div>				
				<div class="form-group">
					<label class="control-label visible-ie8 visible-ie9"><g:message code='user.password.label'/></label>
					<div class="<g:hasErrors bean="${command}" field="password">has-error </g:hasErrors>input-icon">
						<i class="fa fa-lock"></i>
						<input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="<g:message code='user.password.label'/>" name="password" value="${command.password}" />
					</div>
					<g:hasErrors bean="${command}" field="password">
						<span for="password" class="help-block"><g:fieldError bean="${command}" field="password" /></span>
					</g:hasErrors>					 
				</div>
				<div class="form-group">
					<label class="control-label visible-ie8 visible-ie9"><g:message code='user.password2.label'/>Re-type Your Password</label>
					<div class="controls">
						<div class="<g:hasErrors bean="${command}" field="password2">has-error </g:hasErrors>input-icon">
							<i class="fa fa-check"></i>
							<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="<g:message code='user.password2.label'/>" name="password2" value="${command.password2}" />
						</div>
					</div>
					<g:hasErrors bean="${command}" field="password2">
						<span for="password2" class="help-block"><g:fieldError bean="${command}" field="password2" /></span>
					</g:hasErrors>					
				</div>
				<div class="form-group">
					<input type="checkbox" name="tnc">
					<label>
					 I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
					</label>  
					<div id="register_tnc_error"></div>
				</div>
				<div class="form-actions">
					<button type="submit" id="register-submit-btn" class="btn green">
						<g:message code='spring.security.ui.register.submit'/>
					</button>            
				</div>
			</g:else>
		</form>
		<!-- END REGISTRATION FORM -->
	</div>
	</body>
</html>