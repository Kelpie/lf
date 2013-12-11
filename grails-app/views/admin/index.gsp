<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<br>
		<a href="/admin/match/index"  class="btn btn-primary" tabindex="-1">
			<g:message code="default.link.skip.label" default="Match"/>
		</a>
		<a href="/admin/player/index"  class="btn btn-success" tabindex="-1">
			<g:message code="default.link.skip.label" default="Player"/>
		</a>
		<a href="/admin/referee/index"  class="btn btn-info" tabindex="-1">
			<g:message code="default.link.skip.label" default="Referee"/>
		</a>
		<a href="/admin/stadium/index"  class="btn btn-warning" tabindex="-1">
			<g:message code="default.link.skip.label" default="Stadium"/>
		</a>
		<a href="/admin/team/index"  class="btn btn-danger" tabindex="-1">
			<g:message code="default.link.skip.label" default="Team"/>
		</a>
		<a href="/admin/tournament/index"  class="btn btn-primary" tabindex="-1">
			<g:message code="default.link.skip.label" default="Tournament"/>
		</a>
		<a href="/admin/tournamentStage/index"  class="btn btn-success" tabindex="-1">
			<g:message code="default.link.skip.label" default="Tournament Stage"/>
		</a>
	</body>
</html>