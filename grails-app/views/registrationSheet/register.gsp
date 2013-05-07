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

     
<ul class="main_navi">
        <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="session" action="active" class="transition">Active Sessions</g:link></li>
</ul>


<div onmousedown="return false"><g:img alt="SHU:Registration" class="logo" dir="images" file="img/logo.png" /></div>

</div>
<br>

<h1>ID: ${params.id} // ${registrationSheetInstance.session.sessionName} // ${registrationSheetInstance.sheetName} </h1>
<hr>

        <g:form action="processAttendance" name="processAttendance" id="${registrationSheetInstance.id}" method="GET">


	<g:select id="student" name="student.id" from="${registrationSheetInstance.session.enrollments.student}" optionKey="id" required="" value="${registerEntryInstance?.session?.enrollments?.student?.id}" class="many-to-one"/>


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
