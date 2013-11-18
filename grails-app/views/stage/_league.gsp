<%@ page import="info.livefans.request.RequestUtils" %>
<table class="table table-bordered">
	<thead>
		<tr>
			<th class="league-table-name"><g:message code="team"/></th>
			<th class="league-table-numb"><abbr title="<g:message code="league.played"/>"><g:message code="league.played.abbr"/></abbr></th>
			<th class="league-table-numb"><abbr title="<g:message code="league.won"/>"><g:message code="league.won.abbr"/></abbr></th>
			<th class="league-table-numb"><abbr title="<g:message code="league.draw"/>"><g:message code="league.draw.abbr"/></abbr></th>
			<th class="league-table-numb"><abbr title="<g:message code="league.lost"/>"><g:message code="league.lost.abbr"/></abbr></th>
			<th class="league-table-numb"><abbr title="<g:message code="league.goals.for"/>"><g:message code="league.goals.for.abbr"/></abbr></th>
			<th class="league-table-numb"><abbr title="<g:message code="league.goals.against"/>"><g:message code="league.goals.against.abbr"/></abbr></th>
			<th class="league-table-numb"><abbr title="<g:message code="league.goal.difference"/>"><g:message code="league.goal.difference.abbr"/></abbr></th>
			<th class="league-table-numb"><abbr title="<g:message code="league.points"/>"><g:message code="league.points.abbr"/></abbr></th>
		</tr>
	</thead>	
	<tbody>
		<g:each in="${info.stats}" var="stat">
			<tr>
				<td class="league-table-name"><a href="${"/team/${stat.team.id}/${RequestUtils.forSeoUrl(g.message(code:stat.team.name))}"}"><g:message code="${stat.team.name}"/></a></td>
				<td class="league-table-numb">${stat.played}</td>
				<td class="league-table-numb">${stat.won}</td>
				<td class="league-table-numb">${stat.draw}</td>
				<td class="league-table-numb">${stat.lost}</td>
				<td class="league-table-numb">${stat.goalsFor}</td>
				<td class="league-table-numb">${stat.goalsAgainst}</td>
				<td class="league-table-numb">${stat.goalDifference}</td>
				<td class="league-table-numb">${stat.points}</td>
			</tr>
		</g:each>
	</tbody>
</table>