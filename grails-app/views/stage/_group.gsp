<%@ page import="info.livefans.request.RequestUtils" %>
<g:set var="seoTrnName" value="${RequestUtils.forSeoUrl(g.message(code:info.groups.keySet().first().tournament.name))}" />
<g:set var="groupsPerSide" value="${(info.groups.size()/2).intValue()}" />

<div class="row">
	<div class="col-md-6">
		<g:each var="group" in="${info.groups.keySet()}" status="i">
			<g:set var="groupStats" value="${info.groups[group]}" />
			<g:set var="secondColumn" value="${i == groupsPerSide}" />
			<g:if test="${secondColumn}">
				</div><div class="col-md-6">
			</g:if>
			<g:set var="seoStageName" value="${RequestUtils.forSeoUrl(g.message(code:group.name))}" />
			<g:set var="stageUrl" value="${"/tournament/${seoTrnName}/stage/${group.id}/${seoStageName}"}" />
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title"><a href="${stageUrl}"><g:message code="${group.name}"/></a></h3>
				</div>
				<div class="panel-body">
					<g:render template="/stage/league" model="['stage': group, 'info': ['stats':groupStats]]" />
				</div>
			</div>
		</g:each>
	</div>
</div>