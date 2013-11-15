<html>
	<head>
		<meta name="layout" content="/public">
	</head>
	<body>
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
						<h3 class="panel-title">Proximos partidos</h3>
					</div>
					<div class="panel-body">
						<div class="list-group">
							<a href="#" class="list-group-item active">
								<h4 class="list-group-item-heading">List group item heading</h4>
								<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
							</a>
							<a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">List group item heading</h4>
								<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
							</a>
							<a href="#" class="list-group-item">
								<h4 class="list-group-item-heading">List group item heading</h4>
								<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		Show tournament: ${currentStage.name}
		<g:message code="${currentStage.name}"/>
	</body>
</html>