
<%@ page import="info.livefans.Tournament" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tournament.label', default: 'Tournament')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tournament" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tournament" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tournament">
			
				<g:if test="${tournamentInstance?.logo}">
				<li class="fieldcontain">
					<span id="logo-label" class="property-label"><g:message code="tournament.logo.label" default="Logo" /></span>
					
						<span class="property-value" aria-labelledby="logo-label"><g:fieldValue bean="${tournamentInstance}" field="logo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tournamentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="tournament.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${tournamentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tournamentInstance?.place}">
				<li class="fieldcontain">
					<span id="place-label" class="property-label"><g:message code="tournament.place.label" default="Place" /></span>
					
						<span class="property-value" aria-labelledby="place-label"><g:fieldValue bean="${tournamentInstance}" field="place"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tournamentInstance?.poster}">
				<li class="fieldcontain">
					<span id="poster-label" class="property-label"><g:message code="tournament.poster.label" default="Poster" /></span>
					
						<span class="property-value" aria-labelledby="poster-label"><g:fieldValue bean="${tournamentInstance}" field="poster"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tournamentInstance?.slogan}">
				<li class="fieldcontain">
					<span id="slogan-label" class="property-label"><g:message code="tournament.slogan.label" default="Slogan" /></span>
					
						<span class="property-value" aria-labelledby="slogan-label"><g:fieldValue bean="${tournamentInstance}" field="slogan"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tournamentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tournamentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
