
<%@ page import="info.livefans.Stadium" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stadium.label', default: 'Stadium')}" />
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
		<div id="show-stadium" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list stadium">
			
				<g:if test="${stadiumInstance?.latitude}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="latitude-label" class="property-label">
							<g:message code="stadium.latitude.label" default="Latitude" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="latitude-label">
							<g:fieldValue bean="${stadiumInstance}" field="latitude"/>
						</span>
					</dd>
                </dl>    
				</g:if>
			
				<g:if test="${stadiumInstance?.longitude}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="longitude-label" class="property-label">
							<g:message code="stadium.longitude.label" default="Longitude" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="longitude-label">
							<g:fieldValue bean="${stadiumInstance}" field="longitude"/>
						</span>
					</dd>
                </dl>    
				</g:if>
			
				<g:if test="${stadiumInstance?.photo}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="photo-label" class="property-label">
							<g:message code="stadium.photo.label" default="Photo" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="photo-label">
							<g:fieldValue bean="${stadiumInstance}" field="photo"/>
						</span>
					</dd>
                </dl>  
				</g:if>
			
				<g:if test="${stadiumInstance?.location}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="location-label" class="property-label">
							<g:message code="stadium.location.label" default="Location" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="location-label">
							<g:message code="${stadiumInstance.location}"/>
						</span>
					</dd>
                </dl>  
				</g:if>
			
				<g:if test="${stadiumInstance?.name}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="name-label" class="property-label">
							<g:message code="stadium.name.label" default="Name" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="name-label">
							<g:message code="${stadiumInstance.name}"/>
						</span>
					</dd>
                </dl>  
				</g:if>
			
			</ol>
			<g:form url="[resource:stadiumInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link action="edit" class="btn btn-primary" href="${createLink(uri: '/admin/stadium/edit/')}" params="[id: "${stadiumInstance.id}"]" >
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
