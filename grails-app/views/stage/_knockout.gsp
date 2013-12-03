<asset:javascript src="lib/bracket/jquery.bracket.min.js"/>

<script type="text/javascript">

	/* Custom data objects passed as teams */
	var customData = {
	    teams : [
	      [{name: "Team 1", flag: 'fi'}, {name: "Team 2", flag: 'kr'}],
	      [{name: "Team 3", flag: 'se'}, {name: "Team 4", flag: 'us'}]
	    ],
	    results : [4,2]
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
	  container.append('<img src="site/png/'+data.flag+'.png" /> ').append(data.name)
	}
	 
	$(function() {
	  $('div#customHandlers .demo').bracket({
	    init: customData,
	    save: function(){}, /* without save() labels are disabled */
	    decorator: {edit: edit_fn,
	                render: render_fn}})
	  })
</script>
