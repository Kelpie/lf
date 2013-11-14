
<%@ page import="info.livefans.Referee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'referee.label', default: 'Referee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-referee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-referee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list referee">
			
				<g:if test="${refereeInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="referee.photo.label" default="Photo" /></span>
					
						<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${refereeInstance}" field="photo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${refereeInstance?.birthdate}">
				<li class="fieldcontain">
					<span id="birthdate-label" class="property-label"><g:message code="referee.birthdate.label" default="Birthdate" /></span>
					
						<span class="property-value" aria-labelledby="birthdate-label"><g:formatDate date="${refereeInstance?.birthdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${refereeInstance?.birthplace}">
				<li class="fieldcontain">
					<span id="birthplace-label" class="property-label"><g:message code="referee.birthplace.label" default="Birthplace" /></span>
					
						<span class="property-value" aria-labelledby="birthplace-label"><g:fieldValue bean="${refereeInstance}" field="birthplace"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${refereeInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="referee.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${refereeInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${refereeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="referee.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${refereeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:refereeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${refereeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
