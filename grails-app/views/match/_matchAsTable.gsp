<g:set var="teamAname" value="${g.message(code:match.teamA.name)}" />
<g:set var="teamBname" value="${g.message(code:match.teamB.name)}" />
<g:set var="stageName" value="${g.message(code:match.stage.name)}" />

<a href="/match/${match.id}/${teamAname}-vs-${teamBname}/${stageName}" class="list-group-item">
	<table class="list-group-item-heading trnmnt-match">
		<tbody>
			<tr>
				<td class="logo l">
					<asset:image src="${match.teamA.logo}"/>
				</td>
				<td class="name">
					<table>
						<tr><td>${teamAname}</td></tr>
						<tr><td>${match.scoreA!=null?match.scoreA:''}</td></tr>
					</table>
				</td>
				<td class="vs">
					vs
				</td>
				<td class="name">
					<table>
						<tr><td>${teamBname}</td></tr>
						<tr><td>${match.scoreB!=null?match.scoreB:''}</td></tr>
					</table>
				</td>
				<td class="logo r">
					<asset:image src="${match.teamB.logo}"/>
				</td>																																																				
			</tr>												
		</tbody>
	</table>
	<table class="list-group-item-text trnmnt-match">
		<tbody>
			<tr><td><g:formatDate format="dd-MM-yyyy HH:mm" date="${match.date}"/></td></tr>
			<tr><td>${stageName}</td></tr>
		</tbody>
	</table>
</a>