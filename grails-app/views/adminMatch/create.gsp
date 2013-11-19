<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<br>
			<div>
				<a class="btn btn-primary" href="${createLink(uri: '/admin/match/index')}">
					<g:message code="default.home.label"/>
				</a>
				<g:link class="btn btn-success" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link>
			</div>
		</div>
		<div id="create-match" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${matchInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${matchInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<form role="form" action="/admin/match/save" method="POST">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<br>
					<g:submitButton name="create" class="btn btn-success save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			<form>
		</div>
	</body>
</html>
