<%@ page import="info.livefans.Referee" %>



<div class="fieldcontain ${hasErrors(bean: refereeInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="referee.photo.label" default="Photo" />
		
	</label>
	<g:textField name="photo" value="${refereeInstance?.photo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: refereeInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="referee.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${refereeInstance?.birthdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: refereeInstance, field: 'birthplace', 'error')} ">
	<label for="birthplace">
		<g:message code="referee.birthplace.label" default="Birthplace" />
		
	</label>
	<g:textField name="birthplace" value="${refereeInstance?.birthplace}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: refereeInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="referee.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" value="${refereeInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: refereeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="referee.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${refereeInstance?.name}"/>
</div>

