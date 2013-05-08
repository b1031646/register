<!DOCTYPE html>
<head>	
<title>SHU Registration | Home</title>

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


<p>Welcome Back, ${session.instructor.instructorName}</p><br>

<h1>Your Sessions</h1>

	<!-- Twitter bootstrap table displaying the sessions a logged in instructor is teaching -->	

	<table class = 'table table-striped table-hover'>
	    <tr>
		<td><b>Session</b></td>
		<td><b>Module</b></td>
		<td><b>Course</b></td>
	   </tr>
         </thead>
         <tbody>
	 <g:each in ="${sessionlist}" var='ent'>
	  <tr>
		<td><g:link controller="session" action="session_detail" id="${ent.id}">${ent.sessionName}</g:link></td>
		<td><g:link controller="module" action="module_show" id="${ent.module.id}">${ent.module}</g:link></td>
		<td><g:link controller="course" action="course_show" id="${ent.module.course.id}">${ent.module.course}</g:link></td>
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
