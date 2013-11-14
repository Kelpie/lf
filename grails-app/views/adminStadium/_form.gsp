<%@ page import="info.livefans.Stadium" %>



<div class="fieldcontain ${hasErrors(bean: stadiumInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="stadium.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: stadiumInstance, field: 'latitude')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: stadiumInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="stadium.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: stadiumInstance, field: 'longitude')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: stadiumInstance, field: 'photo', 'error')} ">
	<label for="photo">
		<g:message code="stadium.photo.label" default="Photo" />
		
	</label>
	<g:textField name="photo" value="${stadiumInstance?.photo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stadiumInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="stadium.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${stadiumInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stadiumInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="stadium.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${stadiumInstance?.name}"/>
</div>

