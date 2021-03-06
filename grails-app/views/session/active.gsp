<!DOCTYPE html>
<head>	
<title>SHU Registration | Active Sessions</title>

    <% /*  Resources Links for CSS/JS Files */ %>
 
    <r:require module="template"/>
<r:require modules="bootstrap"/>
    <r:layoutResources/>


</head>
<body>
<body id="portfolio">
<div id="container">
<div id="login">

<p id="logintaglib"><g:loginControl/></p>

</div>
    <div class="stripe"></div>

<div id="content">

<!-- Header -->

<div id="header">

<div id="loader"><img alt="" src="img/ajax-loader.gif" /></div>

<!-- Header -->


     
<ul class="main_navi">
        <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="session" action="active" class="transition">Active Sessions</g:link></li>
</ul>



<div onmousedown="return false"><g:img alt="SHU:Registration" class="logo" dir="images" file="img/logo.png" /></div>

</div>

<h1>Active Sessions</h1>

	<!-- Twitter bootstrap table that displaysthe details of active sessions -->

	<table class = 'table table-striped table-hover'>
	  <thead>
	    <tr>
		<td><b>Session</b></td>
		<td><b>Sheet Name</b></td>
	   </tr>
         </thead>
         <tbody>
	 <g:each in ="${active_sheets}" var='ent'>
	  <tr>
		<td><g:link controller="session" action="session_detail" id="${ent.session.id}">${ent.session}</g:link></td>
		<td>${ent.sheetName}</td>
	   </tr>
	  </g:each>
	 </tbody>
	</table>







<div id="footer">
<hr>
<br>
    &#169; SHU Registration 2013. All rights reserved.
    

    <ul class="footer_navi">
         <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="session" action="active" class="transition">Active Sessions</g:link></li>
    </ul>


</div>
    
</div>
</div>

<r:layoutResources/>
</body>
</html>
