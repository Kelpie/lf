<!DOCTYPE html>
<html>
	<head>
		<asset:stylesheet src="page/error.css"/>
    <meta name="layout" content="flaterror">
    <g:if env="development"><link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css"></g:if>
	</head>
  <body>
    <div class="middle-container">
      <div class="middle-row">
        <div class="middle-wrapper">
          <div class="error-container-header">
            <div class="container">
              <div class="row">
                <div class="col-sm-12">
                  <div class="text-center">
                    500
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="error-container">
            <div class="container">
              <div class="row">
                <div class="col-sm-4 col-sm-offset-4">
                  <h4 class="text-center title">
                    Ooops! Something went wrong.
                    <br>
                    But don't worry - we'll fix that soon.
                  </h4>
	                <g:if env="development">
	                        <g:renderException exception="${exception}" />
	                </g:if>                  
                </div>
              </div>
            </div>
          </div>
          <div class="error-container-footer">
            <div class="container">
              <div class="row">
                <div class="col-sm-12">
                  <div class="text-center">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>	
  </body>
</html>
