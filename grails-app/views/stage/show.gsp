<%@ page import="info.livefans.request.RequestUtils" %>
<html>
	<head>
		<meta name="layout" content="/public">
		<asset:stylesheet src="page/stage.show.css"/>
	</head>
	<body>
		<g:set var="tournament" value="${stage.tournament}" />
		<g:set var="seoTrnName" value="${RequestUtils.forSeoUrl(g.message(code:tournament.name))}" />
		<g:set var="matches" value="${stage.matches()}" />
		<g:set var="showMatches" value="${!matches.isEmpty()}" />

		<ol class="breadcrumb">
			<li><a href="/tournament/${tournament.id}/${RequestUtils.forSeoUrl(g.message(code: tournament.name))}"><g:message code="${tournament.name}"/></a></li>
			<g:each var="ts" in="${stage.previusStages()}">
				<li><a href="${"/tournament/${seoTrnName}/stage/${ts.id}/${RequestUtils.forSeoUrl(g.message(code:ts.name))}"}"><g:message code="${ts.name}"/></a></li>
			</g:each>	
			<li class="active"><g:message code="${stage.name}"/></li>
		</ol>
		<div class="row">
			<div class="${showMatches?'col-md-6':'col-md-12'}">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title"><g:message code="${stage.name}"/></h3>
					</div>
					<div class="panel-body">
						<g:render template="/stage/${stage.type.toString().toLowerCase()}" model="['stage': stage,'info': info]" />
					</div>
				</div>				
			</div>
			<g:if test="${showMatches}">
				<div class="col-md-6">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title"><g:message code="matches"/></h3>
						</div>
						<div class="panel-body">
							<g:each var="match" in="${matches}">
								<g:render template="/match/matchAsTable" model="['match': match]" />
							</g:each>
						</div>
					</div>
				</div>
			</g:if>
		</div>
	</body>
</html>