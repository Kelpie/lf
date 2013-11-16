<%@ page import="info.livefans.request.RequestUtils" %>

<html>
	<head>
		<meta name="layout" content="/public">
		<asset:stylesheet src="page/tournament.show.css"/>
	</head>
	<body>
		<g:set var="seoTrnName" value="${RequestUtils.forSeoUrl(g.message(code:tournament.name))}" />
		<g:set var="currentStage" value="${tournament.currentStage()}" />
		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-md-8">
				<div class="jumbotron">
					<div class="row">
						<div class="col-xs-6">
							<h1>
								<g:message code="${tournament.name}"/>
							</h1>
							<h2>
								<g:message code="${tournament.slogan}"/>
							</h2>
							<p>
								<g:if test="${currentStage}">
									<a href="#" class="btn btn-primary btn-lg" role="button" style="margin-top: 35px;">
										<g:message code="${currentStage.name}"/>
									</a>
								</g:if>
								<g:else>
								</g:else>
							</p>
						</div>
						<div class="col-xs-6">
							<center>
								<asset:image src="${tournament.logo}" style="max-height: 350px;" />
							</center>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title"><g:message code="next.matches"/></h3>
					</div>
					<div class="panel-body">
						<div class="list-group">
							<g:each var="stage" in="${tournament.nextMatches(3)}">
								<a href="#" class="list-group-item">
									<h4 class="list-group-item-heading">List group item heading</h4>
									<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
								</a>
							</g:each>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="btn-group-vertical trnmnt-stages">
					<g:each var="stage" in="${tournament.stages()}">
						<g:set var="seoStageName" value="${RequestUtils.forSeoUrl(g.message(code:stage.name))}" />
						<g:set var="stageUrl" value="${"/tournament/${seoTrnName}/stage/${stage.id}/${seoStageName}"}" />
						<g:if test="${stage.isFinished()}">
							<a href="${stageUrl}" class="btn btn-lg btn-info"><g:message code="${stage.name}"/></a>
						</g:if>
						<g:else>
							<g:if test="${stage.isPlaying()}">
								<a href="${stageUrl}" class="btn btn-lg btn-primary"><g:message code="${stage.name}"/></a>
							</g:if>
							<g:else>
								<a href="${stageUrl}" class="btn btn-lg btn-default"><g:message code="${stage.name}"/></a>
							</g:else>
						</g:else>
					</g:each>					
					
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-3">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title"><g:message code="teams"/></h3>
					</div>
					<div class="panel-body">
						<ul class="list-unstyled">
							<g:each var="team" in="${tournament.teams()}">
								<li>
									<a class="trnmnt-panel-info" href="${"/team/${team.id}/${RequestUtils.forSeoUrl(g.message(code:team.name))}"}">
										<p>
											<asset:image src="${team.logo}" />
											<span><g:message code="${team.name}"/></span>
										</p>								
									</a>
								</li>							
							</g:each>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title"><g:message code="stadiums"/></h3>
					</div>
					<div class="panel-body">
						<ul class="list-unstyled">
							<g:each var="stadium" in="${tournament.stadiums()}">
								<li>
									<a class="trnmnt-panel-info" href="${"/stadium/${stadium.id}/${RequestUtils.forSeoUrl(g.message(code:stadium.name))}"}">
										<p>
											<asset:image src="${stadium.photo}" />
											<span><g:message code="${stadium.name}"/></span>
										</p>								
									</a>
								</li>							
							</g:each>							
						</ul>					
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>		
	</body>
</html>