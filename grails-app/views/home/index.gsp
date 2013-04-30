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

<g:if test="${session.instructor}">
     
<ul class="main_navi">
        <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
       <!-- <li><g:link controller="home" action="index" class="transition">Link1</g:link></li>
	<li><g:link controller="home" action="index" class="transition">Link2</g:link></li>
        <li><g:link controller="home" action="index" class="transition">Link3</g:link></li>
        <li><g:link controller="home" action="index" class="transition">Link4</g:link></li>-->
</ul>

</g:if>

<div onmousedown="return false"><g:img alt="RAMM:Designs" class="logo" dir="images" file="img/logo.png" /></div>

</div>


<p>Welcome Back, ${session.instructor.instructorName}</p><br>

<h2>Your Sessions:</h2>

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
    
<g:if test="${session.instructor}">
<!--
    <ul class="footer_navi">
          <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="home" action="index" class="transition">Link1</g:link></li>
	<li><g:link controller="home" action="index" class="transition">Link2</g:link></li>
        <li><g:link controller="home" action="index" class="transition">Link3</g:link></li>
        <li><g:link controller="home" action="index" class="transition">Link4</g:link></li>
    </ul>
-->
</g:if>

</div>
    
</div>
</div>

<r:layoutResources/>
</body>
</html>
