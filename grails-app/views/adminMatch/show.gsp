
<%@ page import="info.livefans.Match" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'match.label', default: 'Match')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<br>
			<a class="btn btn-primary" href="${createLink(uri: '/admin/index')}">
				<g:message code="default.home.label"/>
			</a>
			<g:link class="btn btn-success" action="index">
				<g:message code="default.list.label" args="[entityName]" />
			</g:link>
			<g:link class="btn btn-info" action="create">
				<g:message code="default.new.label" args="[entityName]" />
			</g:link>
		</div>
		<div id="show-match" class="content scaffold-show" role="main">
			<h1>
				<g:message code="default.show.label" args="[entityName]" />
			</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol  class="property-list match">
				<g:if test="${matchInstance?.teamA}">
					<dl class="dl-horizontal">
                    	<dt class="form-grup">
							<span id="teamA-label" class="property-label">
								<g:message code="match.teamA.label" default="Team A" />
							</span>
    	                </dt>
	                    <dd class="form-grup">
							<span class="property-value" aria-labelledby="teamA-label">
								<g:link controller="team" action="show" id="${matchInstance?.teamA?.id}">
									<g:message code="${matchInstance?.teamA?.name?.encodeAsHTML()}" />
								</g:link>
							</span>
					    </dd>
					</dl>     
				</g:if>
			
				<g:if test="${matchInstance?.teamB}">
				<dl class="dl-horizontal">
                	<dt class="form-grup">
						<span id="teamB-label" class="property-label">
							<g:message code="match.teamB.label" default="Team B" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="teamB-label">
							<g:link controller="team" action="show" id="${matchInstance?.teamB?.id}">
								<g:message code="${matchInstance?.teamB?.name?.encodeAsHTML()}"/>
							</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${matchInstance?.scoreA}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="scoreA-label" class="property-label">
							<g:message code="match.scoreA.label" default="Score A" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="scoreA-label">
							<g:fieldValue bean="${matchInstance}" field="scoreA"/>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${matchInstance?.scoreB}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="scoreB-label" class="property-label">
							<g:message code="match.scoreB.label" default="Score B" />
						</span>
					</dt>
                    <dd class="form-grup">
						<span class="property-value" aria-labelledby="scoreB-label">
							<g:fieldValue bean="${matchInstance}" field="scoreB"/>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${matchInstance?.date}">
						<dl class="dl-horizontal">
							<dt class="form-grup">
								<span id="date-label" class="property-label">
									<g:message code="match.date.label" default="Date" />
								</span>
							</dt>
							<dd class="form-grup">
								<span  class="property-value" aria-labelledby="date-label">
									<g:formatDate format="dd-MM-yyyy HH:mm" date="${matchInstance?.date}" />
								</span>
							</dd>
						</dl>	
				</g:if>
			
				<g:if test="${matchInstance?.referee1}">
				<dl class="dl-horizontal">
					<dt class="form-grup">
						<span id="referee1-label" class="property-label">
							<g:message code="match.referee1.label" default="Referee1" />
						</span>
					</dt>
					<dd class="form-grup">
						<span class="property-value" aria-labelledby="referee1-label">
							<g:link controller="referee" action="show" id="${matchInstance?.referee1?.id}">
							${matchInstance?.referee1?.lastname?.encodeAsHTML()}
							${matchInstance?.referee1?.name?.encodeAsHTML()}</g:link>
						</span>
					</dd>
				</dl>	
				</g:if>
			
				<g:if test="${matchInstance?.referee2}">
				<dl class="dl-horizontal">
					<dt class="form-grup">
						<span id="referee2-label" class="property-label">
							<g:message code="match.referee2.label" default="Referee2" />
						</span>
					</dt>
					<dd class="form-grup">
						<span class="property-value" aria-labelledby="referee2-label">
							<g:link controller="referee" action="show" id="${matchInstance?.referee2?.id}">${matchInstance?.referee2?.lastname?.encodeAsHTML()}
							${matchInstance?.referee2?.name?.encodeAsHTML()}</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${matchInstance?.referee3}">
				<dl class="dl-horizontal">
					<dt class="form-grup">
						<span id="referee3-label" class="property-label">
							<g:message code="match.referee3.label" default="Referee3" />
						</span>
					</dt>
					<dd class="form-grup">
						<span class="property-value" aria-labelledby="referee3-label">
							<g:link controller="referee" action="show" id="${matchInstance?.referee3?.id}">
							${matchInstance?.referee3?.lastname?.encodeAsHTML()}
							${matchInstance?.referee3?.name?.encodeAsHTML()}</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${matchInstance?.referee4}">
				<dl class="dl-horizontal">
					<dt class="form-grup">
					<span id="referee4-label" class="property-label">
						<g:message code="match.referee4.label" default="Referee4" />
					</span>
					</dt>
					<dd class="form-grup">
						<span class="property-value" aria-labelledby="referee4-label">
							<g:link controller="referee" action="show" id="${matchInstance?.referee4?.id}">
							${matchInstance?.referee4?.lastname?.encodeAsHTML()}
							${matchInstance?.referee4?.name?.encodeAsHTML()}</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${matchInstance?.stadium}">
				<dl class="dl-horizontal">
					<dt class="form-grup">
					<span id="stadium-label" class="property-label">
						<g:message code="match.stadium.label" default="Stadium" />
					</span>
					</dt>
					<dd class="form-grup">
						<span class="property-value" aria-labelledby="stadium-label">
							<g:link controller="stadium" action="show" id="${matchInstance?.stadium?.id}">
								<g:message code="${matchInstance?.stadium?.name?.encodeAsHTML()}"/>
							</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${matchInstance?.stage}">
				<dl class="dl-horizontal">
					<dt class="form-grup">
						<span id="stage-label" class="property-label">
							<g:message code="match.stage.label" default="Stage" />
						</span>
					</dt>
					<dd class="form-grup">
						<span class="property-value" aria-labelledby="stage-label">
							<g:link controller="tournamentStage" action="show" id="${matchInstance?.stage?.id}">
								<g:message code="${matchInstance?.stage?.name?.encodeAsHTML()}"/>
							</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${matchInstance?.tournament}">
				<dl class="dl-horizontal">
					<dt class="form-grup">
						<span id="tournament-label" class="property-label">
							<g:message code="match.tournament.label" default="Tournament" />
						</span>
					</dt>
					<dd class="form-grup">
						<span class="property-value" aria-labelledby="tournament-label">
							<g:link controller="tournament" action="show" id="${matchInstance?.tournament?.id}">
								<g:message code="${matchInstance?.tournament?.name?.encodeAsHTML()}"/>
							</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
			</ol>
			<g:form url="[resource:matchInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link action="edit" class="btn btn-primary" href="${createLink(uri: '/admin/match/edit/')}" params="[id: "${matchInstance.id}"]" >
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
