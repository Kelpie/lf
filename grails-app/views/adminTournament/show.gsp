
<%@ page import="info.livefans.Tournament" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'tournament.label', default: 'Tournament')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<br>
				<a class="btn btn-primary" href="${createLink(uri: '/')}">
					<g:message code="default.home.label"/>
				</a>
				<g:link class="btn btn-success" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link>
				<g:link class="btn btn-info" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
		</div>
		<div id="show-tournament" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tournament">
			
				<g:if test="${tournamentInstance?.logo}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="logo-label" class="property-label">
							<g:message code="tournament.logo.label" default="Logo" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="logo-label">
							<g:fieldValue bean="${tournamentInstance}" field="logo"/>
						</span>
					</dd>
                </dl>
				</g:if>
			
				<g:if test="${tournamentInstance?.name}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="name-label" class="property-label">
							<g:message code="tournament.name.label" default="Name" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="name-label">
							<g:message code="${tournamentInstance.name}" />
						</span>
					</dd>
                </dl>
				</g:if>
			
				<g:if test="${tournamentInstance?.place}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="place-label" class="property-label">
							<g:message code="tournament.place.label" default="Place" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="place-label">
							<g:message code="${tournamentInstance.place}" />
						</span>
					</dd>
                </dl>
				</g:if>
			
				<g:if test="${tournamentInstance?.poster}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="poster-label" class="property-label">
							<g:message code="tournament.poster.label" default="Poster" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="poster-label">
							<g:message code="${tournamentInstance.poster}" />
						</span>
					</dd>
                </dl>
				</g:if>
			
				<g:if test="${tournamentInstance?.slogan}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="slogan-label" class="property-label">
							<g:message code="tournament.slogan.label" default="Slogan" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="slogan-label">
							<g:message code="${tournamentInstance.slogan}" />
						</span>
					</dd>
                </dl>
				</g:if>
			
			</ol>
			<g:form url="[resource:tournamentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link action="edit" class="btn btn-primary" href="${createLink(uri: '/admin/tournament/edit/')}" params="[id: "${tournamentInstance.id}"]" >
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
