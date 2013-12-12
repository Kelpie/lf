
<%@ page import="info.livefans.Referee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'referee.label', default: 'Referee')}" />
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
		<div id="show-referee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list referee">
			
				<g:if test="${refereeInstance?.photo}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
					<span id="photo-label" class="property-label">
						<g:message code="referee.photo.label" default="Photo" />
					</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="photo-label">
							<g:fieldValue bean="${refereeInstance}" field="photo"/>
						</span>
					</dd>
                </dl>    
				</g:if>
			
				<g:if test="${refereeInstance?.birthdate}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="birthdate-label" class="property-label">
							<g:message code="referee.birthdate.label" default="Birthdate" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="birthdate-label">
							<g:formatDate format="dd-MM-yyyy HH:mm" date="${refereeInstance?.birthdate}" />
						</span>
					</dd>
                </dl>    
				</g:if>
			
				<g:if test="${refereeInstance?.birthplace}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="birthplace-label" class="property-label">
							<g:message code="referee.birthplace.label" default="Birthplace" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="birthplace-label">
							<g:fieldValue bean="${refereeInstance}" field="birthplace"/>
						</span>
					</dd>
                </dl>    
				</g:if>
			
				<g:if test="${refereeInstance?.lastname}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="lastname-label" class="property-label">
							<g:message code="referee.lastname.label" default="Lastname" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="lastname-label">
							<g:fieldValue bean="${refereeInstance}" field="lastname"/>
						</span>
					</dd>
                </dl>    
				</g:if>
			
				<g:if test="${refereeInstance?.name}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="name-label" class="property-label">
							<g:message code="referee.name.label" default="Name" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="name-label">
							<g:fieldValue bean="${refereeInstance}" field="name"/>
						</span>
					</dd>
                </dl>    
				</g:if>
			
			</ol>
			<g:form url="[resource:refereeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link action="edit" class="btn btn-primary" href="${createLink(uri: '/admin/referee/edit/')}" params="[id: "${refereeInstance.id}"]" >
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
