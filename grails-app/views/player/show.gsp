<html>
	<head>
		<meta name="layout" content="/public">
		<asset:stylesheet src="page/player.show.css"/>
	</head>
	<body>
		<g:set var="player" value="${player}" />
		<div class="list-group">
			<div class="list-group-item active">
      			<h4 class="list-group-item-heading">${player}</h4>
    		</div>
    		<div class="list-group-item">
    			<div class="row">
    				<div class="col-md-7">
	    				<div class="list-group">
	    					<div class="list-group-item">
	      						<h4 class="list-group-item-heading">Age</h4>
	      						<p class="list-group-item-text">${player.birthdate}</p>
	      					</div>
		      				<div class="list-group-item">
		      					<h4 class="list-group-item-heading">Heigh</h4>
		      					<p class="list-group-item-text">${player.heigh}</p>
		      				</div>
		      				<div class="list-group-item">
		      					<h4 class="list-group-item-heading">Birthplace</h4>
		      					<p class="list-group-item-text">${player.birthplace}</p>
		      				</div>
		      				<div class="list-group-item">
		      					<h4 class="list-group-item-heading">Position</h4>
		      					<p class="list-group-item-text">Delantero</p>
		      				</div>
		      				<div class="list-group-item">
		      					<h4 class="list-group-item-heading">Club</h4>
		      					<p class="list-group-item-text">Barcelona</p>
		      				</div>
		      				<div class="list-group-item">
		      					<h4 class="list-group-item-heading">Tournament goals</h4>
		      					<p class="list-group-item-text">7</p>
		      				</div>
		      				<div class="list-group-item">
		      					<h4 class="list-group-item-heading">Yellow cards</h4>
		      					<p class="list-group-item-text">3</p>
		      				</div>
		      				<div class="list-group-item">
		      					<h4 class="list-group-item-heading">Red cards</h4>
		      					<p class="list-group-item-text">0</p>
		      				</div>
		      			</div>
	      			</div>
	  				<div class="col-md-5">
	  					<div class="list-group">
	  						<div class="list-group-item">
	  							<asset:image src="/player/LionelMessi.jpg"/>
	  						</div>
	  					</div>
	  				</div>
  				</div>
    		</div>
		</div>
	</body>
</html>