
<%@ page import="info.livefans.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<br>
				<a class="btn btn-primary" href="${createLink(uri: '/admin/index')}">
					<g:message code="default.home.label"/>
				</a>
				<g:link class="btn btn-success" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link>
				<g:link class="btn btn-info" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
		</div>
		<div id="show-team" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list team">
			
				<g:if test="${teamInstance?.coach}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="coach-label" class="property-label">
							<g:message code="team.coach.label" default="Coach" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="coach-label">
							<g:link controller="player" action="show" id="${teamInstance?.coach?.id}">
								<g:message code="${teamInstance?.coach?.lastname?.encodeAsHTML()}"/>
								<g:message code="${teamInstance?.coach?.name?.encodeAsHTML()}"/>
							</g:link>
						</span>
					</dd>
                </dl>  
				</g:if>
			
				<g:if test="${teamInstance?.logo}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="logo-label" class="property-label">
							<g:message code="team.logo.label" default="Logo" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="logo-label">
							<g:fieldValue bean="${teamInstance}" field="logo"/>
						</span>
					</dd>
                </dl>  
				</g:if>
			
				<g:if test="${teamInstance?.name}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="name-label" class="property-label">
							<g:message code="team.name.label" default="Name" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="name-label">
							<g:message code="${teamInstance.name}"/>
						</span>
					</dd>
                </dl> 
				</g:if>
			
			</ol>
			<g:form url="[resource:teamInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link action="edit" class="btn btn-primary" href="${createLink(uri: '/admin/team/edit/')}" params="[id: "${teamInstance.id}"]" >
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
