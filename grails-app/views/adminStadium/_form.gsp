<%@ page import="info.livefans.Stadium" %>

<br>
<div class="form-grup fieldcontain ${hasErrors(bean: stadiumInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="stadium.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" class="form-control" value="${fieldValue(bean: stadiumInstance, field: 'latitude')}" required=""/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: stadiumInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="stadium.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" class="form-control" value="${fieldValue(bean: stadiumInstance, field: 'longitude')}" required=""/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: stadiumInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="stadium.photo.label" default="Photo" />
		
	</label>
	<g:textField name="photo" class="form-control" value="${stadiumInstance?.photo}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: stadiumInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="stadium.location.label" default="Location" />
		
	</label>
	<g:textField name="location" class="form-control" value="${stadiumInstance?.location}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: stadiumInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="stadium.name.label" default="Name" />
		
	</label>
	<g:textField name="name" class="form-control" value="${stadiumInstance?.name}"/>
</div>
<br>
