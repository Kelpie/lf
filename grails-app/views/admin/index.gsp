<!-- TODO: llamadas a todas las vistas INDEX. --!>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'admin.label', default: 'Admin')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<br>
		<a href="/admin/match/index"  class="skip" tabindex="-1">
			<g:message code="default.link.skip.label" default="Match"/>
		</a>
		<br>
		<a href="/admin/player/index"  class="skip" tabindex="-1">
			<g:message code="default.link.skip.label" default="Player"/>
		</a>
		<br>
		<a href="/admin/referee/index"  class="skip" tabindex="-1">
			<g:message code="default.link.skip.label" default="Referee"/>
		</a>
		<br>
		<a href="/admin/stadium/index"  class="skip" tabindex="-1">
			<g:message code="default.link.skip.label" default="Stadium"/>
		</a>
		<br>
		<a href="/admin/team/index"  class="skip" tabindex="-1">
			<g:message code="default.link.skip.label" default="Team"/>
		</a>
		<br>
		<a href="/admin/tournament/index"  class="skip" tabindex="-1">
			<g:message code="default.link.skip.label" default="Tournament"/>
		</a>
	</body>
</html>