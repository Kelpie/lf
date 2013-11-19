
<%@ page import="info.livefans.Team" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">	
			<div>
				<br>
				<a class="btn btn-primary" href="${createLink(uri: '/admin/index')}">
					<g:message code="default.home.label"/>
				</a>
				<g:link class="btn btn-success" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
			</div>
		</div>
		<div id="list-team" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<th><g:message code="team.coach.label" default="Coach" /></th>
					
						<g:sortableColumn property="logo" title="${message(code: 'team.logo.label', default: 'Logo')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'team.name.label', default: 'Name')}" />
						
						<th><g:message code="teamInstance.id" default="View Details" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${teamInstanceList}" status="i" var="teamInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
								<g:message code="${teamInstance.coach}" />
						</td>
					
						<td>${fieldValue(bean: teamInstance, field: "logo")}</td>
					
						<!--<td>${fieldValue(bean: teamInstance, field: "name")}</td>!-->
						<td>
							<g:message code="${teamInstance.name}" />
						</td>

						<td>
							<g:link action="show" id="${teamInstance.id}">
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
