
<%@ page import="info.livefans.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
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
		<div id="list-player" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="photo" title="${message(code: 'player.photo.label', default: 'Photo')}" />
					
						<g:sortableColumn property="birthdate" title="${message(code: 'player.birthdate.label', default: 'Birthdate')}" />
					
						<g:sortableColumn property="birthplace" title="${message(code: 'player.birthplace.label', default: 'Birthplace')}" />
					
						<g:sortableColumn property="heigh" title="${message(code: 'player.heigh.label', default: 'Heigh')}" />
					
						<g:sortableColumn property="lastname" title="${message(code: 'player.lastname.label', default: 'Lastname')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'player.name.label', default: 'Name')}" />
					
						<th><g:message code="playerInstance.id" default="View Details" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${playerInstanceList}" status="i" var="playerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${playerInstance.id}">${fieldValue(bean: playerInstance, field: "photo")}</g:link></td>
					
						<td>
							<g:formatDate  format="dd-MM-yyyy HH:mm"  date="${playerInstance.birthdate}" />
						</td>
					
						<td>${fieldValue(bean: playerInstance, field: "birthplace")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "heigh")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "lastname")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "name")}</td>

						<td>
							<g:link action="show" id="${playerInstance.id}">
								<span class="glyphicon glyphicon-eye-open"></span>
							</g:link>
						</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination pagination-sm">
				<ul class="pagination pagination-sm">
				    <li><a href="#">&laquo;</a></li>
					<li><g:paginate total="${matchInstanceCount ?: 0}" /></li>
					<li><a href="#">&raquo;</a></li>	
				</ul>
			</div>
		</div>
	</body>
</html>
