<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title</title>
	</head>
	<body>
		<h2>Dashboard</h2>
 		 <hr>
 		 
 		   <div id="leftCol">
 	<div id="search">
 	<form action="?s=1" method="post">
 	<input type="text" name="search" id="search" >
 	<input type="submit" value="" name="submit" id="searchButton">
 	</form>
 	</div>
 	
  <div class="box">
  <h3>Side Bar</h3>
  <p>Side Bar Content Area useful for sub-nav, alerts, quick links etc.</p>
  </div>
  </div>
  
   <div id="rightCol">	
 	<div class="box">
  		<h3>Current Controllers</h3>
  		<div class="content">
  						<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
  </div>
  </div>
  <div class="c">&nbsp;</div>
	</body>
</html>
