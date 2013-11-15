
<%@ page import="info.livefans.Tournament" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tournament.label', default: 'Tournament')}" />
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
		<div id="list-tournament" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="logo" title="${message(code: 'tournament.logo.label', default: 'Logo')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'tournament.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="place" title="${message(code: 'tournament.place.label', default: 'Place')}" />
					
						<g:sortableColumn property="poster" title="${message(code: 'tournament.poster.label', default: 'Poster')}" />
					
						<g:sortableColumn property="slogan" title="${message(code: 'tournament.slogan.label', default: 'Slogan')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tournamentInstanceList}" status="i" var="tournamentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tournamentInstance.id}">${fieldValue(bean: tournamentInstance, field: "logo")}</g:link></td>
					
						<!--<td>${fieldValue(bean: tournamentInstance, field: "name")}</td>!-->
						<td>
							<g:message code="${tournamentInstance.name}" />
						</td>
					
						<!--<td>${fieldValue(bean: tournamentInstance, field: "place")}</td>!-->
						<td>
							<g:message code="${tournamentInstance.place}" />
						</td>
					
						<!--<td>${fieldValue(bean: tournamentInstance, field: "poster")}</td>!-->
						<td>
							<g:message code="${tournamentInstance.poster}" />
						</td>
					
						<!--<td>${fieldValue(bean: tournamentInstance, field: "slogan")}</td>!-->
						<td>
							<g:message code="${tournamentInstance.slogan}" />
						</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tournamentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
