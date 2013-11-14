
<%@ page import="info.livefans.Match" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-match" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-match" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list match">
			
				<g:if test="${matchInstance?.teamA}">
				<li class="fieldcontain">
					<span id="teamA-label" class="property-label"><g:message code="match.teamA.label" default="Team A" /></span>
					
						<span class="property-value" aria-labelledby="teamA-label"><g:link controller="team" action="show" id="${matchInstance?.teamA?.id}">${matchInstance?.teamA?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.teamB}">
				<li class="fieldcontain">
					<span id="teamB-label" class="property-label"><g:message code="match.teamB.label" default="Team B" /></span>
					
						<span class="property-value" aria-labelledby="teamB-label"><g:link controller="team" action="show" id="${matchInstance?.teamB?.id}">${matchInstance?.teamB?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.scoreA}">
				<li class="fieldcontain">
					<span id="scoreA-label" class="property-label"><g:message code="match.scoreA.label" default="Score A" /></span>
					
						<span class="property-value" aria-labelledby="scoreA-label"><g:fieldValue bean="${matchInstance}" field="scoreA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.scoreB}">
				<li class="fieldcontain">
					<span id="scoreB-label" class="property-label"><g:message code="match.scoreB.label" default="Score B" /></span>
					
						<span class="property-value" aria-labelledby="scoreB-label"><g:fieldValue bean="${matchInstance}" field="scoreB"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="match.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${matchInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.referee1}">
				<li class="fieldcontain">
					<span id="referee1-label" class="property-label"><g:message code="match.referee1.label" default="Referee1" /></span>
					
						<span class="property-value" aria-labelledby="referee1-label"><g:link controller="referee" action="show" id="${matchInstance?.referee1?.id}">${matchInstance?.referee1?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.referee2}">
				<li class="fieldcontain">
					<span id="referee2-label" class="property-label"><g:message code="match.referee2.label" default="Referee2" /></span>
					
						<span class="property-value" aria-labelledby="referee2-label"><g:link controller="referee" action="show" id="${matchInstance?.referee2?.id}">${matchInstance?.referee2?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.referee3}">
				<li class="fieldcontain">
					<span id="referee3-label" class="property-label"><g:message code="match.referee3.label" default="Referee3" /></span>
					
						<span class="property-value" aria-labelledby="referee3-label"><g:link controller="referee" action="show" id="${matchInstance?.referee3?.id}">${matchInstance?.referee3?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.referee4}">
				<li class="fieldcontain">
					<span id="referee4-label" class="property-label"><g:message code="match.referee4.label" default="Referee4" /></span>
					
						<span class="property-value" aria-labelledby="referee4-label"><g:link controller="referee" action="show" id="${matchInstance?.referee4?.id}">${matchInstance?.referee4?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.stadium}">
				<li class="fieldcontain">
					<span id="stadium-label" class="property-label"><g:message code="match.stadium.label" default="Stadium" /></span>
					
						<span class="property-value" aria-labelledby="stadium-label"><g:link controller="stadium" action="show" id="${matchInstance?.stadium?.id}">${matchInstance?.stadium?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.stage}">
				<li class="fieldcontain">
					<span id="stage-label" class="property-label"><g:message code="match.stage.label" default="Stage" /></span>
					
						<span class="property-value" aria-labelledby="stage-label"><g:link controller="tournamentStage" action="show" id="${matchInstance?.stage?.id}">${matchInstance?.stage?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchInstance?.tournament}">
				<li class="fieldcontain">
					<span id="tournament-label" class="property-label"><g:message code="match.tournament.label" default="Tournament" /></span>
					
						<span class="property-value" aria-labelledby="tournament-label"><g:link controller="tournament" action="show" id="${matchInstance?.tournament?.id}">${matchInstance?.tournament?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:matchInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${matchInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
