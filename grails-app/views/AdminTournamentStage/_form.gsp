<%@ page import="info.livefans.tournament.TournamentStage" %>


<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentStageInstance, field: 'next', 'error')} ">
	<label for="next">
		<g:message code="tournamentStage.next.label" default="Next" />
		
	</label>
	<g:select id="next" name="next.id" from="${info.livefans.tournament.TournamentStage.list()}" optionKey="id" value="${tournamentStageInstance?.next?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentStageInstance, field: 'rank', 'error')} ">
	<label for="rank">
		<g:message code="tournamentStage.rank.label" default="Rank" />
		
	</label>
	<g:field class="form-control" name="rank" type="number" value="${tournamentStageInstance.rank}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentStageInstance, field: 'dateFrom', 'error')} required">
	<label for="dateFrom">
		<g:message code="tournamentStage.dateFrom.label" default="Date From" />
		<span class="required-indicator">*</span>
	</label>
	<input type="datetime-local" name="dateFrom" precision="day" format="dd-MM-yyyy HH:mm" class="form-control" value="${tournamentStageInstance?.dateFrom?.format("yyyy-MM-dd'T'HH:mm")}" />
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentStageInstance, field: 'dateTo', 'error')} required">
	<label for="dateTo">
		<g:message code="tournamentStage.dateTo.label" default="Date To" />
		<span class="required-indicator">*</span>
	</label>
		<input type="datetime-local" name="dateTo" precision="day"  class="form-control" value="${tournamentStageInstance?.dateTo?.format("yyyy-MM-dd'T'HH:mm")}">
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentStageInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tournamentStage.name.label" default="Name" />
		
	</label>
	<g:textField class="form-control" name="name" value="${tournamentStageInstance?.name}" />
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentStageInstance, field: 'tournament', 'error')} required">
	<label for="tournament">
		<g:message code="tournamentStage.tournament.label" default="Tournament" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tournament" name="tournament.id" from="${info.livefans.Tournament.list()}" optionKey="id" required="" value="${tournamentStageInstance?.tournament?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: tournamentStageInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="tournamentStage.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${info.livefans.tournament.TournamentStageType?.values()}" keys="${info.livefans.tournament.TournamentStageType.values()*.name()}" required="" value="${tournamentStageInstance?.type?.name()}" class="form-control"/>
</div>
<br>
