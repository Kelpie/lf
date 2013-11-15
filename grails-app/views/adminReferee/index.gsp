
<%@ page import="info.livefans.Referee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'referee.label', default: 'Referee')}" />
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
		<div id="list-referee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="photo" title="${message(code: 'referee.photo.label', default: 'Photo')}" />
					
						<g:sortableColumn property="birthdate" title="${message(code: 'referee.birthdate.label', default: 'Birthdate')}" />
					
						<g:sortableColumn property="birthplace" title="${message(code: 'referee.birthplace.label', default: 'Birthplace')}" />
					
						<g:sortableColumn property="lastname" title="${message(code: 'referee.lastname.label', default: 'Lastname')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'referee.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${refereeInstanceList}" status="i" var="refereeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${refereeInstance.id}">${fieldValue(bean: refereeInstance, field: "photo")}</g:link></td>
					
						<td><g:formatDate date="${refereeInstance.birthdate}" /></td>
					
						<td>${fieldValue(bean: refereeInstance, field: "birthplace")}</td>
					
						<td>${fieldValue(bean: refereeInstance, field: "lastname")}</td>
					
						<td>${fieldValue(bean: refereeInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${refereeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
