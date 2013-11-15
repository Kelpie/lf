
<%@ page import="info.livefans.Stadium" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stadium.label', default: 'Stadium')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">	
			<div>
				<a class="btn btn-primary" href="${createLink(uri: '/admin/index')}">
					<g:message code="default.home.label"/>
				</a>
				<g:link class="btn btn-success" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
			</div>
		</div>
		<div id="list-stadium" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="latitude" title="${message(code: 'stadium.latitude.label', default: 'Latitude')}" />
					
						<g:sortableColumn property="longitude" title="${message(code: 'stadium.longitude.label', default: 'Longitude')}" />
					
						<g:sortableColumn property="photo" title="${message(code: 'stadium.photo.label', default: 'Photo')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'stadium.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'stadium.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stadiumInstanceList}" status="i" var="stadiumInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:link action="show" id="${stadiumInstance.id}">
								${fieldValue(bean: stadiumInstance, field: "latitude")}
							</g:link>
						</td>
					
						<td>${fieldValue(bean: stadiumInstance, field: "longitude")}</td>
					
						<td>${fieldValue(bean: stadiumInstance, field: "photo")}</td>
					
						<!--<td>${fieldValue(bean: stadiumInstance, field: "location")}</td>!-->
						<td><g:message code="${stadiumInstance.location}" /></td>
					
						<!--<td>${fieldValue(bean: stadiumInstance, field: "name")}</td>!-->
						<td><g:message code="${stadiumInstance.name}" /></td>


					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stadiumInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
