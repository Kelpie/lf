<g:set var="isCurrentController" value="${controllerName == controllerMenu}" />
<sec:access controller="${controllerMenu}" action="index">
	<li class="${controllerName == controllerMenu?'active':''}">
		<a>
			<i class="fa ${menuLabelIcon}"></i>
			<span class="title"><g:message code="${menuLabelCode}"/></span>
			<g:if test="${isCurrentController}">
				<span class="selected"></span>
			</g:if>
			<span class="arrow ${isCurrentController?'open':''}"></span>
		</a>
		<ul class="sub-menu">
			<g:each status="i" in="${controllerMenuActions}" var="controllerMenuAction">
				<sec:access controller="${controllerMenu}" action="${controllerMenuAction}">
					<li class="${(isCurrentController && actionName == controllerMenuAction)?'active':''}">
						<a href="${controllerMenuActionsHrefs[i]}">
							<i class="fa ${controllerMenuActionsIcons[i]}"></i>
							<g:message code="${controllerMenuActionsCodes[i]}"/>
						</a>
					</li>										
				</sec:access>
			</g:each>
		</ul>
	</li>								
</sec:access>