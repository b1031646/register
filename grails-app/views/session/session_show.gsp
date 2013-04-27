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

 <hr width="100%"> 
<div id="show-session" class="content scaffold-show" role="main">
			<h1>${sessionInstance.sessionName}</h1>
			<ol class="property-list session">
			
		
			
				<g:if test="${sessionInstance?.instructor}">
				<li class="fieldcontain">
					<span id="instructor-label" class="property-label"><g:message code="session.instructor.label" default="Instructor" /></span>
					
						<span class="property-value" aria-labelledby="instructor-label"><g:link controller="instructor" action="show" id="${sessionInstance?.instructor?.id}">${sessionInstance?.instructor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.module}">
				<li class="fieldcontain">
					<span id="module-label" class="property-label"><g:message code="session.module.label" default="Module" /></span>
					
						<span class="property-value" aria-labelledby="module-label"><g:link controller="module" action="show" id="${sessionInstance?.module?.id}">${sessionInstance?.module?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${sessionInstance?.enrollments}">
				<li class="fieldcontain">
					<span id="enrollments-label" class="property-label"><g:message code="session.enrollments.label" default="Enrollments" /></span>
					
						<g:each in="${sessionInstance.enrollments}" var="e">
						<span class="property-value" aria-labelledby="enrollments-label">
<g:link controller="student" action="show" id="${e.student.id}">${e?.student}</g:link></span>
						</g:each>
					
				</li>
				</g:if>




			
				<g:if test="${sessionInstance?.registrationSheets}">
				<li class="fieldcontain">
					<span id="registrationSheets-label" class="property-label"><g:message code="session.registrationSheets.label" default="Registration Sheets" /></span>
					
						<g:each in="${sessionInstance.registrationSheets}" var="r">
						<span class="property-value" aria-labelledby="registrationSheets-label"><g:link controller="registrationSheet" action="show" id="${r.id}">${r?.sheetName}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
			
			</g:form>
		</div>


        <g:form controller="RegistrationSheet" action="newsheet" name="addregsheet">

	
<g:hiddenField  name="session.id" from="${sessionInstance?.id}" optionKey="id" required="" value="${sessionInstance?.id}" class="many-to-one"/>

<g:textField name="sheetName" value="Enter Sheet Name"/><g:renderErrors bean="${addregsheet}" as="list" field="sheetName"/> 

<g:hiddenField  name="notes"  required="" value="" />

<g:hiddenField  name="returnid"  required="" value="${sessionInstance.id}" />

<g:submitButton class="subscribeButton" name="newSheet" value="Create Sheet"></g:submitButton>

 </g:form>
	<g:if test="${flash.message}">
			<div id="errors" role="status">${flash.message}</div>
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
