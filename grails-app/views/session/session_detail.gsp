<!DOCTYPE html>
<head>	
<title>SHU Registration | ${sessionInstance.sessionName}</title>

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

 <hr width="100%"> 


<div id="show-session" class="content scaffold-show" role="main">
			<h1>${sessionInstance.sessionName}</h1>
			<ol class="property-list session">
			
		
			


	<table class = 'table table-hover table-condensed'>
	    <tr>
		<td><b>Instructor</b></td>
		<td><b>Module</b></td>
		<td><b>Enrollments</b></td>
		<td><b>Registration Sheets</b></td>
	   </tr>
         </thead>
         <tbody>
	  <tr>
		<td>
<!-- Checks if the logged in session.instructor matches the instructor who takes a particular module, if instructor is able to view their personal details and change their password.
	This makes sure that a instructor can only amend their own details -->
<g:if test="${session.instructor.id == sessionInstance.instructor.id}">
<g:link controller="instructor" action="show" id="${sessionInstance.instructor.id}">${sessionInstance?.instructor?.encodeAsHTML()}</g:link>
</g:if>

<!-- If no match is found show the instructor name with no link -->
<g:if test="${session.instructor.id != sessionInstance.instructor.id}">
${sessionInstance?.instructor?.encodeAsHTML()}
</g:if>
</td>
		<td><g:link controller="module" action="module_show" id="${sessionInstance?.module?.id}">${sessionInstance?.module?.encodeAsHTML()}</g:link></td>
		
	<td><g:each in="${sessionInstance.enrollments}" var="e">
		<span class="property-value" aria-labelledby="enrollments-label">
			<g:link controller="student" action="student_show" id="${e.student.id}">${e?.student}</g:link><br/></span>
			</g:each></td>

		<td>
<!-- Checks if the logged in session.instructor matches the instructor who takes a particular module, if instructor is able to view registration sheets and register students.
	This makes sure that a instructor can only sign in to their own sessions -->
<g:if test="${session.instructor.id == sessionInstance.instructor.id}">
<g:each in="${sessionInstance.registrationSheets}" var="r">
			<span class="property-value" aria-labelledby="registrationSheets-label">
				<g:link controller="apply" action="index" id="${r.id}">${r?.sheetName}</g:link><br/></span>
					</g:each>
</g:if>
<!-- If no match is found show all registration sheets for that module with no links -->
<g:if test="${session.instructor.id != sessionInstance.instructor.id}">
<g:each in="${sessionInstance.registrationSheets}" var="r">
			<span class="property-value" aria-labelledby="registrationSheets-label">
				${r?.sheetName}<br/></span>
					</g:each>
</g:if>




</td>
	   </tr>
	  
	 </tbody>
	</table>

<!-- Checks if the logged in session.instructor matches the instructor who takes a particular module, if so the 'add registration sheet' form is shown.
	This makes sure that a instructor can only add registration sheets to their own sessions -->

<g:if test="${session.instructor.id == sessionInstance.instructor.id}">

<h2>Add new registration sheet for ${sessionInstance.sessionName}</h2>
        <g:form controller="RegistrationSheet" action="newsheet" name="addregsheet">

	
<g:hiddenField  name="session.id" from="${sessionInstance?.id}" optionKey="id" required="" value="${sessionInstance?.id}" class="many-to-one"/>

<g:textField name="sheetName" value="Enter Sheet Name"/><g:renderErrors bean="${addregsheet}" as="list" field="sheetName"/> 

<g:hiddenField  name="notes"  required="" value="N/A" />

<g:hiddenField  name="returnid"  required="" value="${sessionInstance.id}" />

<g:submitButton class="subscribeButton" name="newSheet" value="Create Sheet"></g:submitButton>

 </g:form>
	<g:if test="${flash.message}">
			<div id="errors" role="status">${flash.message}</div>
			</g:if>


</g:if>


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
