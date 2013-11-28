<%@ page import="info.livefans.Referee" %>

<div class="form-grup fieldcontain ${hasErrors(bean: refereeInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="referee.photo.label" default="Photo" />
		
	</label>
	<g:textField name="photo" class="form-control" value="${refereeInstance?.photo}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: refereeInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="referee.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<input type="datetime-local" name="date" precision="day"  class="form-control" value="${refereeInstance?.birthdate}">
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: refereeInstance, field: 'birthplace', 'error')} ">
	<label for="birthplace">
		<g:message code="referee.birthplace.label" default="Birthplace" />
		
	</label>
	<g:textField name="birthplace" class="form-control" value="${refereeInstance?.birthplace}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: refereeInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="referee.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" class="form-control" value="${refereeInstance?.lastname}" />
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: refereeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="referee.name.label" default="Name" />
		
	</label>
	<g:textField name="name" class="form-control" value="${refereeInstance?.name}"/>
</div>
<br>
