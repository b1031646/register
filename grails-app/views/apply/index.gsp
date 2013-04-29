<!DOCTYPE html>
<head>	
<title>SHU Registration | Home</title>

    <% /*  Resources Links for CSS/JS Files */ %>
 
    <r:require module="template"/>

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
<br>

<h1>ID: ${params.id} // ${registrationSheetInstance.session.sessionName} // ${registrationSheetInstance.sheetName} </h1>
<hr>

        <g:form action="processAttendance" name="processAttendance" id="${registrationSheetInstance.id}" method="GET">


	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.register.Student.list()}" optionKey="id" required="" value="${registerEntryInstance?.student?.id}" class="many-to-one"/>


	<g:hiddenField name="registrationsheet.id" from="${params?.id}" optionKey="id" required="" value="${params?.id}" class="many-to-one"/>

<g:submitButton class="registerButton" name="processAttendance" value="Register Student"></g:submitButton>

 </g:form>
	<g:if test="${flash.message}">
			<div id="errors" role="status">${flash.message}</div>
			</g:if>

<hr width="33%"> 

<br>
<h2>Students Attended:</h2>
<hr width="17%"> 

<ul>
<g:each in ="${registrationSheetInstance.registerEntries}" var='ent'>
<br>
<li><h4>${ent.student.studentName}: <g:formatDate date="${ent.timestamp}" type="date/time" style="SHORT"/></h4> </li>

</g:each>
</ul>






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
