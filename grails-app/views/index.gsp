<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.png">

    <title>Fans on the Cloud</title>

    <!-- Bootstrap core CSS -->
    <asset:stylesheet src="home/carousel.css"/>

    <!--[if lt IE 9]>
      <asset:javascript src="lib/bootstrap/respond.min.js"/>
    <![endif]-->
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <!-- HEADER -->
    <header>
      <div class="wrapper cf">
        
        <div id="logo">
          <a href="index.html"><img  src="img/logo.png" alt="Simpler"></a>
        </div>
        
        <!-- nav -->
        <ul id="nav" class="sf-menu">
          <li><a href="index.html"><span>HOME</span></a></li>
          <li><a href="blog.html">BLOG</a></li>
          <li><a href="page.html">ABOUT</a>
            <ul>
              <li><a href="page-elements.html">Elements</a></li>
              <li><a href="page-icons.html">Icons</a></li>
              <li><a href="page-typography.html">Typography</a></li>
            </ul>
          </li>
          <li class="current-menu-item"><a href="portfolio.html">WORK</a></li>
          <li><a href="contact.html">CONTACT</a></li>
        </ul>
        <div id="combo-holder"></div>
        <!-- ends nav -->

      </div>
    </header>
    <!-- ENDS HEADER -->    
    <div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Fans on the Cloud</a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <!-- <img src="/images/hinchometro.png" data-src="holder.js/100%x500/auto/#777:#7a7a7a/text:First slide" alt="First slide">-->
          <img src="/assets/hinchometro.png"  alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>HINCHOMETRO.</h1>
              <p>Hincha por tu equipo favorito para demostrar como lo seguis a todos lados!.</p>
              <p><a class="btn btn-large btn-primary" href="#">Partidos en VIVO</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <!--<img src="data:image/png;base64," data-src="holder.js/100%x500/auto/#777:#7a7a7a/text:Second slide" alt="Second slide">-->
          <img src="/assets/comentaPartido.png"  alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>COMENTA LOS PARTIDOS</h1>
              <p>FotC te brinda interacción, información y estadísticas de los partidos que mas te interesan EN VIVO.</p>
              <p><a class="btn btn-large btn-primary" href="#">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <!--<img src="data:image/png;base64," data-src="holder.js/100%x500/auto/#777:#7a7a7a/text:Third slide" alt="Third slide">-->
          <img src="/assets/informacion.png" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>INFORMACIÓN.</h1>
              <p>Te mantenemos al dia con toda la información, resultados, estadisticas y mucho mas...</p>
              <p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <!--<img class="img-circle" src="data:image/png;base64," data-src="holder.js/140x140" alt="Generic placeholder image">-->
          <img class="img-circle" src="/assets/misPredicciones.png" alt="Generic placeholder image">
          <h2>Mis Predicciones</h2>
          <p>Crea tu predicción acerca de los resultados de los partidos y compite entre amigos. El objetivo del Juego es acumular la mayor cantidad de puntos en base a la actuación real de los equipos en 
          la liga seleccionada</p>
          <p><a class="btn btn-default" href="#">Leer Detalles &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <!--<img class="img-circle" src="data:image/png;base64," data-src="holder.js/140x140" alt="Generic placeholder image">-->
          <img class="img-circle" src="/assets/torneoDeAmigos.png" alt="Generic placeholder image">
          <h2>Torneo de Amigos</h2>
          <p>Con tu prediccion del fixture, enfrentate todas las fechas con tus amigos, compañeros de oficina o familiares, y buscá salir campeón.</p>
          <p><a class="btn btn-default" href="#">Leer Detalles &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <!--<img class="img-circle" src="data:image/png;base64," data-src="holder.js/140x140" alt="Generic placeholder image">-->
          <img class="img-circle" src="/assets/fasesDelTorneo.png" alt="Generic placeholder image">
          <h2>Fase del Torneo</h2>
          <p>Revisa en que posicion te encuentras del torneo en la fecha actual, verifica los ultimos resultados mismo.</p>
          <p><a class="btn btn-default" href="#">Leer Detalles &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <!--<h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>-->
          <h2 class="featurette-heading">Fixture de la proxima fecha</h2>
          <p class="lead">Ponete al dia con los partidos que se vienen.</p>
        </div>
        <div class="col-md-5">
          <!--<img class="featurette-image img-responsive" src="data:image/png;base64," data-src="holder.js/500x500/auto" alt="Generic placeholder image">-->
          <img class="featurette-image img-responsive" src="/assets/fixtureActual.png"  alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-5">
          <img class="featurette-image img-responsive" src="data:image/png;base64," data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
        <div class="col-md-7">
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" src="data:image/png;base64," data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->
    <asset:javascript src="lib/home/holder.js"/>
    <!-- FOOTER -->
    
    <footer>
      <div class="wrapper cf">
      
        <!-- widgets -->
        <ul  class="widget-cols cf">
          <li class="first-col">
            
            <div class="widget-block">
              <h4>RECENT POSTS</h4>
              <div class="recent-post cf">
                <a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
                <div class="post-head">
                  <a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
                </div>
              </div>
              <div class="recent-post cf">
                <a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
                <div class="post-head">
                  <a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
                </div>
              </div>
              <div class="recent-post cf">
                <a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
                <div class="post-head">
                  <a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
                </div>
              </div>
            </div>
          </li>
          
          <li class="second-col">
            
            <div class="widget-block">
              <h4>ABOUT</h4>
              <p>Folder it's completely free this means you don't have to pay anything <a href="http://luiszuno.com/blog/license" tar >read license</a>.</p> 
              <p>Visit <a href="http://templatecreme.com/" >Template Creme</a> and find the most beautiful free templates up to date.</p>
            </div>
            
          </li>
          
          <li class="third-col">
            
            <div class="widget-block">
              <div id="tweets" class="footer-col tweet">
                    <h4>TWITTER WIDGET</h4>
                  </div>
                </div>
                
          </li>
          
          <li class="fourth-col">
            
            <div class="widget-block">
              <h4>CATEGORIES</h4>
              <ul>
                <li class="cat-item"><a href="#" >Design</a></li>
                <li class="cat-item"><a href="#" >Photo</a></li>
                <li class="cat-item"><a href="#" >Art</a></li>
                <li class="cat-item"><a href="#" >Game</a></li>
                <li class="cat-item"><a href="#" >Film</a></li>
                <li class="cat-item"><a href="#" >TV</a></li>
              </ul>
            </div>
                
          </li> 
        </ul>
        <!-- ENDS widgets --> 
        
        
        <!-- bottom -->
        <div class="footer-bottom">
          <div class="left">by <a href="http://luiszuno.com" >luiszuno.com</a></div>
            <ul id="social-bar" class="cf sb">
              <li><a href="http://www.facebook.com"  title="Become a fan" class="facebook">Facebbok</a></li>
              <li><a href="http://www.twitter.com" title="Follow my tweets" class="twitter"></a></li>
              <li><a href="http://plus.google.com" title="Enter my circles" class="plus"></a></li>
            </ul>
        </div>  
        <!-- ENDS bottom -->
      
      </div>
    </footer>
    <!-- ENDS FOOTER -->    
  </body>
</html>
