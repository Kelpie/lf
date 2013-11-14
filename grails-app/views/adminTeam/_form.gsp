<%@ page import="info.livefans.Team" %>



<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'coach', 'error')} required">
	<label for="coach">
		<g:message code="team.coach.label" default="Coach" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="coach" name="coach.id" from="${info.livefans.Player.list()}" optionKey="id" required="" value="${teamInstance?.coach?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="team.logo.label" default="Logo" />
		
	</label>
	<g:textField name="logo" value="${teamInstance?.logo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${teamInstance?.name}"/>
</div>

