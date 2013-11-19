<%@ page import="info.livefans.Tournament" %>


<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="tournament.logo.label" default="Logo" />
		
	</label>
	<g:textField name="logo" class="form-control" value="${tournamentInstance?.logo}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tournament.name.label" default="Name" />
		
	</label>
	<g:textField name="name" class="form-control" value="${tournamentInstance?.name}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentInstance, field: 'place', 'error')} ">
	<label for="place">
		<g:message code="tournament.place.label" default="Place" />
		
	</label>
	<g:textField name="place" class="form-control" value="${tournamentInstance?.place}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentInstance, field: 'poster', 'error')} ">
	<label for="poster">
		<g:message code="tournament.poster.label" default="Poster" />
		
	</label>
	<g:textField name="poster" class="form-control" value="${tournamentInstance?.poster}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentInstance, field: 'slogan', 'error')} ">
	<label for="slogan">
		<g:message code="tournament.slogan.label" default="Slogan" />
		
	</label>
	<g:textField name="slogan" class="form-control" value="${tournamentInstance?.slogan}"/>
</div>
<br>
