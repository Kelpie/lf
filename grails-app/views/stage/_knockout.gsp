<asset:javascript src="lib/bracket/jquery.bracket.min.js"/>
<div id="brackets">
</div>
<script type="text/javascript">

	/* Custom data objects passed as teams */
	var customData = {
		teams : [
		<g:each in="${info.brackets.first()}" var="binfo" status="i">
			<g:set var="match" value="${binfo.match}" />
			<g:set var="pc" value="${binfo.precondition}" />
			[
			<g:if test="${match && match.teamA}">
				{ 'name': '${g.message(code:match.teamA.name)}', 'flag': '${match.teamA.logo}' },
			</g:if>
			<g:else>				
				{ 'name': '${pc.teamAfromStagePosition} ${g.message(code:pc.teamAFromStage.name)}', 'flag': '/assets/country/unknown.gif' },
			</g:else>
			<g:if test="${match && match.teamB}">
				{ 'name': '${g.message(code:match.teamB.name)}', 'flag': '${match.teamB.logo}' },
			</g:if>
			<g:else>				
				{ 'name': '${pc.teamAfromStagePosition} ${g.message(code:pc.teamBFromStage.name)}', 'flag': '/assets/country/unknown.gif' },
			</g:else>
			]<g:if test="${info.brackets.first().size() - i > 1}">,</g:if>
		</g:each>
		],
		results : [
		<g:each in="${info.brackets}" var="round" status="i">
			[
			<g:each in="${round}" var="binfo" status="j">
				<g:set var="match" value="${binfo.match}" />
				<g:if test="${match.scoreA != null && match.scoreB != null}">
					[${match.scoreA},${match.scoreB}]<g:if test="${round.size() - j > 1}">,</g:if>
				</g:if>
			</g:each>
			]<g:if test="${info.brackets.size() - i > 1}">,</g:if>
		</g:each>
		]
	}

	/* Edit function is called when team label is clicked */
	function edit_fn(container, data, doneCb) {
		var input = $('<input type="text">')
		input.val(data.name)
		container.html(input)
		input.focus()
		input.blur(function() { doneCb({flag: data.flag, name: input.val()}) })
	}


	/* Render function is called for each team label when data is changed, data
	 * contains the data object given in init and belonging to this slot. */
	function render_fn(container, data, score) {
		if (!data.flag || !data.name)
			return
		container.append('<a href="#" style="color: #333;text-decoration: none;"><img src="/assets/'+data.flag+'" style="max-height:11px;max-width:16px;"/> ' + data.name + '</a>')
	}

	function onclick(data) {
		console.log('onclick', data);
	}

	$(function() {
		$('#brackets').bracket({
			init: customData,
			onMatchClick: onclick,
			decorator: {
				edit: edit_fn,
				render: render_fn
			}
		});
	});
</script>
