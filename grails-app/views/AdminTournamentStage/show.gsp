
<%@ page import="info.livefans.tournament.TournamentStage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tournamentStage.label', default: 'TournamentStage')}" />
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
		<div id="show-tournamentStage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tournamentStage">
			
				<g:if test="${tournamentStageInstance?.next}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="next-label" class="property-label">
							<g:message code="tournamentStage.next.label" default="Next" />
						</span>
					</dt>
	                <dd class="form-grup">
						<span class="property-value" aria-labelledby="next-label">
							<g:link controller="tournamentStage" action="show" id="${tournamentStageInstance?.next?.id}">
								<g:message code="${tournamentStageInstance?.next?.name.encodeAsHTML()}"/>
							</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${tournamentStageInstance?.rank}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="rank-label" class="property-label">
							<g:message code="tournamentStage.rank.label" default="Rank" />
						</span>
					</dt>
	                <dd class="form-grup">
						<span class="property-value" aria-labelledby="rank-label">
							<g:fieldValue bean="${tournamentStageInstance}" field="rank"/>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${tournamentStageInstance?.dateFrom}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="dateFrom-label" class="property-label">
							<g:message code="tournamentStage.dateFrom.label" default="Date From" />
						</span>
					</dt>
	                <dd class="form-grup">
						<span class="property-value" aria-labelledby="dateFrom-label">
							<g:formatDate format="dd-MM-yyyy HH:mm" date="${tournamentStageInstance?.dateFrom}" />
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${tournamentStageInstance?.dateTo}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="dateTo-label" class="property-label">
							<g:message code="tournamentStage.dateTo.label" default="Date To" />
						</span>
					</dt>
	                <dd class="form-grup">
						<span class="property-value" aria-labelledby="dateTo-label">
							<g:formatDate format="dd-MM-yyyy HH:mm" date="${tournamentStageInstance?.dateTo}" />
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${tournamentStageInstance?.name}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="name-label" class="property-label">
							<g:message code="tournamentStage.name.label" default="Name" />
						</span>
					</dt>
	                <dd class="form-grup">
						<span class="property-value" aria-labelledby="name-label">
							<g:message code="${tournamentStageInstance.name?.encodeAsHTML()}"/>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${tournamentStageInstance?.tournament}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="tournament-label" class="property-label">
							<g:message code="tournamentStage.tournament.label" default="Tournament" />
						</span>
					</dt>
	                <dd class="form-grup">
						<span class="property-value" aria-labelledby="tournament-label">
							<g:link controller="tournament" action="show" id="${tournamentStageInstance?.tournament?.id}">
								<g:message code="${tournamentStageInstance?.tournament?.name?.encodeAsHTML()}"/>
							</g:link>
						</span>
					</dd>
				</dl>
				</g:if>
			
				<g:if test="${tournamentStageInstance?.type}">
				<dl class="dl-horizontal">
                    <dt class="form-grup">
						<span id="type-label" class="property-label">
							<g:message code="tournamentStage.type.label" default="Type" />
						</span>
					</dt>
	                <dd class="form-grup">
						<span class="property-value" aria-labelledby="type-label">
							<g:message code="${tournamentStageInstance?.type?.encodeAsHTML()}"/>
						</span>
					</dd>
				</dl>
				</g:if>
			
			</ol>
			<g:form url="[resource:tournamentStageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link action="edit" class="btn btn-warning" href="${createLink(uri: '/admin/tournamentStage/edit/')}" params="[id: "${tournamentStageInstance.id}"]" >
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
