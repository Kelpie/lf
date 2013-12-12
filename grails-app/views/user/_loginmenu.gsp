<a href="/register" class="btn btn-danger navbar-btn navbar-right create-account"><g:message code="create.free.account"/></a>
<form action="/j_spring_security_check" method="POST" class="navbar-form navbar-right">
	<div class="form-group">
		<input type="text" placeholder="<g:message code="email"/>" class="form-control" name="j_username">
	</div>
	<div class="form-group">
		<input type="password" placeholder="<g:message code="password"/>" class="form-control" name="j_password">
	</div>
	<button type="submit" class="btn btn-success"><g:message code="sign.in"/></button>
</form>