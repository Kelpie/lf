<%@ page import="info.livefans.Match" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
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
		<div id="list-match" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<th><g:message code="match.teamA.label" default="Team A" /></th>
					
						<th><g:message code="match.teamB.label" default="Team B" /></th>
					
						<g:sortableColumn property="scoreA" title="${message(code: 'match.scoreA.label', default: 'Score A')}" />
					
						<g:sortableColumn property="scoreB" title="${message(code: 'match.scoreB.label', default: 'Score B')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'match.date.label', default: 'Date')}" />
					
						<th><g:message code="match.referee1.label" default="Referee1" /></th>

						<th><g:message code="matchInstance.id" default="View Details" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${matchInstanceList}" status="i" var="matchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:message code="${matchInstance.teamA.name}" />
						</td>
					
						<td>
							<g:message code="${matchInstance.teamB.name}" />
						</td>
					
						<td>
							${fieldValue(bean: matchInstance, field: "scoreA")}
						</td>
					
						<td>
							${fieldValue(bean: matchInstance, field: "scoreB")}
						</td>
					
						<td>
							<g:formatDate date="${matchInstance.date}" />
						</td>
					
						<td>
							<g:message code="${matchInstance.referee1.name}" />
						</td>

						<td>
							<g:link action="show" id="${matchInstance.id}">
								<span class="glyphicon glyphicon-eye-open"></span>
							</g:link>
						</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${matchInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
