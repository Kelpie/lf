<%@ page import="info.livefans.Match" %>



<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'teamA', 'error')} ">
	<label for="teamA">
		<g:message code="match.teamA.label" default="Team A" />
		
	</label>
	<g:select  id="teamA" name="teamA.id" from="${info.livefans.Team.list()}" optionKey="id" optionValue="${{g.message(code:it.name)}}"  value="${matchInstance?.teamA?.id}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'teamB', 'error')} ">
	<label for="teamB">
		<g:message code="match.teamB.label" default="Team B" />
		
	</label>
	<g:select id="teamB" name="teamB.id" from="${info.livefans.Team.list()}" optionKey="id" value="${matchInstance?.teamB?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one" noSelection="['null': '']"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'scoreA', 'error')} ">
	<label for="scoreA">
		<g:message code="match.scoreA.label" default="Score A" />
		
	</label>
	<g:field name="scoreA" type="number" class="form-control" value="${matchInstance.scoreA}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'scoreB', 'error')} ">
	<label for="scoreB">
		<g:message code="match.scoreB.label" default="Score B" />
		
	</label>
	<g:field name="scoreB" type="number" class="form-control" value="${matchInstance.scoreB}"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="match.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
<!--<g:datePicker name="date" precision="day"  class="form-control" value="${matchInstance?.date}"  />!-->
	<input type="datetime-local" name="date" precision="day"  class="form-control" value="${matchInstance?.date}">
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'referee1', 'error')} required">
	<label for="referee1">
		<g:message code="match.referee1.label" default="Referee1" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="referee1" name="referee1.id" from="${info.livefans.Referee.list()}" optionKey="id" required="" value="${matchInstance?.referee1?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'referee2', 'error')} required">
	<label for="referee2">
		<g:message code="match.referee2.label" default="Referee2" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="referee2" name="referee2.id" from="${info.livefans.Referee.list()}" optionKey="id" required="" value="${matchInstance?.referee2?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'referee3', 'error')} required">
	<label for="referee3">
		<g:message code="match.referee3.label" default="Referee3" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="referee3" name="referee3.id" from="${info.livefans.Referee.list()}" optionKey="id" required="" value="${matchInstance?.referee3?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'referee4', 'error')} required">
	<label for="referee4">
		<g:message code="match.referee4.label" default="Referee4" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="referee4" name="referee4.id" from="${info.livefans.Referee.list()}" optionKey="id" required="" value="${matchInstance?.referee4?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'stadium', 'error')} required">
	<label for="stadium">
		<g:message code="match.stadium.label" default="Stadium" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="stadium" name="stadium.id" from="${info.livefans.Stadium.list()}" optionKey="id" required="" value="${matchInstance?.stadium?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'stage', 'error')} required">
	<label for="stage">
		<g:message code="match.stage.label" default="Stage" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="stage" name="stage.id" from="${info.livefans.tournament.TournamentStage.list()}" optionKey="id" required="" value="${matchInstance?.stage?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one"/>
</div>
<br>
<div class="form-grup fieldcontain ${hasErrors(bean: matchInstance, field: 'tournament', 'error')} required">
	<label for="tournament">
		<g:message code="match.tournament.label" default="Tournament" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tournament" name="tournament.id" from="${info.livefans.Tournament.list()}" optionKey="id" required="" value="${matchInstance?.tournament?.id}" optionValue="${{g.message(code:it.name)}}" class="form-control many-to-one"/>
</div>
