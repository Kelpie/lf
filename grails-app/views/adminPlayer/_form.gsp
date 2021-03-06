<%@ page import="info.livefans.Player" %>


<br>
<div class="form-grup fieldcontain ${hasErrors(bean: playerInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="player.photo.label" default="Photo" />
		
	</label>
	<g:textField name="photo" class="form-control" value="${playerInstance?.photo}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: playerInstance, field: 'birthdate', 'error')} required">
	<label for="birthdate">
		<g:message code="player.birthdate.label" default="Birthdate" />
		<span class="required-indicator">*</span>
	</label>
	<input type="datetime-local" name="birthdate" precision="day"  class="form-control" value="${playerInstance?.birthdate.format("yyyy-MM-dd'T'HH:mm")}">
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: playerInstance, field: 'birthplace', 'error')} ">
	<label for="birthplace">
		<g:message code="player.birthplace.label" default="Birthplace" />
		
	</label>
	<g:textField name="birthplace" class="form-control" value="${playerInstance?.birthplace}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: playerInstance, field: 'heigh', 'error')} required">
	<label for="heigh">
		<g:message code="player.heigh.label" default="Heigh" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="heigh" class="form-control" value="${fieldValue(bean: playerInstance, field: 'heigh')}" required=""/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: playerInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="player.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" class="form-control" value="${playerInstance?.lastname}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: playerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="player.name.label" default="Name" />
		
	</label>
	<g:textField name="name" class="form-control" value="${playerInstance?.name}"/>
</div>
<br>
