<%@ page import="info.livefans.Player" %>



<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="player.photo.label" default="Photo" />
		
	</label>
	<g:textField name="photo" value="${playerInstance?.photo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="player.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthdate" precision="day"  value="${playerInstance?.birthdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'birthplace', 'error')} ">
	<label for="birthplace">
		<g:message code="player.birthplace.label" default="Birthplace" />
		
	</label>
	<g:textField name="birthplace" value="${playerInstance?.birthplace}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'heigh', 'error')} required">
	<label for="heigh">
		<g:message code="player.heigh.label" default="Heigh" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="heigh" value="${fieldValue(bean: playerInstance, field: 'heigh')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="player.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" value="${playerInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="player.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${playerInstance?.name}"/>
</div>

