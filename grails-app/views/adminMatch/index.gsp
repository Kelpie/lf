<%@ page import="info.livefans.Match" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">	
			<div>
				<a href="#list-match" class="btn btn-warning" tabindex="-1">
					<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
				</a>
				<a class="btn btn-primary" href="${createLink(uri: '/')}">
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
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${matchInstanceList}" status="i" var="matchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:link action="show" id="${matchInstance.id}">
								<g:message code="${matchInstance.teamA.name}" />
							</g:link>
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
