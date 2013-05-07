<!DOCTYPE html>
<head>	
<title>SHU Registration | ${moduleInstance?.moduleName}</title>

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


			<h1>${moduleInstance?.moduleName}</h1>


	<table class = 'table table-striped table-hover'>
	    <tr>
		<td><b>Module ID</b></td>
		<td><b>Module Name</b></td>
		<td><b>Module Description</b></td>
		<td><b>Course</b></td>
		<td><b>Sessions</b></td>
	   </tr>
         </thead>
         <tbody>
	
	  <tr>
		<td>${moduleInstance?.moduleId}</td>
		<td>${moduleInstance?.moduleName}</td>
		<td>${moduleInstance?.moduleDescription}</td>
		<td><g:link controller="course" action="course_show" id="${moduleInstance.course.id}">${moduleInstance?.course}</g:link></td>
		<td><g:each in="${moduleInstance.sessions}" var="s">
						<span class="property-value" aria-labelledby="sessions-label"><g:link controller="session" action="session_detail" id="${s.id}">${s?.encodeAsHTML()}</g:link><br/></span>
						</g:each></td>
	   </tr>
	  
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
