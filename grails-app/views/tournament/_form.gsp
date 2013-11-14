<%@ page import="info.livefans.Tournament" %>



<div class="fieldcontain ${hasErrors(bean: tournamentInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="tournament.logo.label" default="Logo" />
		
	</label>
	<g:textField name="logo" value="${tournamentInstance?.logo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tournamentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tournament.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tournamentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tournamentInstance, field: 'place', 'error')} ">
	<label for="place">
		<g:message code="tournament.place.label" default="Place" />
		
	</label>
	<g:textField name="place" value="${tournamentInstance?.place}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tournamentInstance, field: 'poster', 'error')} ">
	<label for="poster">
		<g:message code="tournament.poster.label" default="Poster" />
		
	</label>
	<g:textField name="poster" value="${tournamentInstance?.poster}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tournamentInstance, field: 'slogan', 'error')} ">
	<label for="slogan">
		<g:message code="tournament.slogan.label" default="Slogan" />
		
	</label>
	<g:textField name="slogan" value="${tournamentInstance?.slogan}"/>
</div>

