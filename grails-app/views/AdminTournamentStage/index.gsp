<%@ page import="info.livefans.tournament.TournamentStage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'tournamentStage.label', default: 'Tournament Stage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<br>
				<a class="btn btn-primary" href="${createLink(uri: '/admin/index')}">
					<g:message code="default.home.label"/>
				</a>
				<g:link class="btn btn-success" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link>
		</div>
		<div id="list-tournamentStage" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'tournamentStage.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="rank" title="${message(code: 'tournamentStage.rank.label', default: 'Rank')}" />
					
						<g:sortableColumn property="dateFrom" title="${message(code: 'tournamentStage.dateFrom.label', default: 'Date From')}" />
					
						<g:sortableColumn property="dateTo" title="${message(code: 'tournamentStage.dateTo.label', default: 'Date To')}" />
					
						<th><g:message code="tournamentStage.next.label" default="Next" /></th>

						<th><g:message code="tournamentStage.tournament.label" default="Tournament" /></th>

						<th><g:message code="tournamentStageInstance.id" default="View Details" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tournamentStageInstanceList}" status="i" var="tournamentStageInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:message code="${tournamentStageInstance.name}" />
						</td>
					
						<td>
							<g:message code="${tournamentStageInstance.rank}" />
						</td>
					
						<td>
							<g:formatDate format="dd-MM-yyyy HH:mm" date="${tournamentStageInstance.dateFrom}"/>
						</td>
					
						<td>
							<g:formatDate format="dd-MM-yyyy HH:mm" date="${tournamentStageInstance.dateTo}" />
						</td>
					
						<td>
							<g:link action="show" id="${tournamentStageInstance.id}">
								<g:message code="${tournamentStageInstance.next?.name}" />
							</g:link>
						</td>

						<td>
							<g:message code="${tournamentStageInstance.tournament?.name}" />
						</td>

						<td>
							<g:link action="show" id="${tournamentStageInstance.id}">
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
					<li><g:paginate total="${tournamentStageInstanceCount ?: 0}" /></li>
					<li><a href="#">&raquo;</a></li>	
				</ul>
			</div>
		</div>
	</body>
</html>
