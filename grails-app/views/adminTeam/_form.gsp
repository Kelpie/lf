<%@ page import="info.livefans.Team" %>


<br>
<div class="form-grup fieldcontain ${hasErrors(bean: teamInstance, field: 'coach', 'error')} required">
	<label for="coach">
		<g:message code="team.coach.label" default="Coach" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="coach" name="coach.id" from="${info.livefans.Player.list()}" optionKey="id" required="" value="${teamInstance?.coach?.id}" class="form-control many-to-one"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: teamInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="team.logo.label" default="Logo" />
		
	</label>
	<g:textField name="logo" class="form-control" value="${teamInstance?.logo}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: teamInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="team.name.label" default="Name" />
		
	</label>
	<g:textField name="name" class="form-control" value="${teamInstance?.name}"/>
</div>
<br>
