<!DOCTYPE html>
<head>	
<title>SHU Registration | Login</title>

    <% /*  Resources Links for CSS/JS Files */ %>
 
    <r:require module="template"/>

    <r:layoutResources/>


</head>
<body>
<body id="portfolio">
<div id="container">

<div id="login">
<g:if test="${session.instructor}">
<p id="logintaglib"><g:loginControl/></p>
</g:if>
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
        <li><g:link controller="session" action="active" class="transition">Active Sessions</g:link></li>
	
      
</ul>

</g:if>

<div onmousedown="return false"><g:img alt="SHU:Registration" class="logo" dir="images" file="img/logo.png" /></div>

</div>

<hr>

<div id="large_error" role="status">${flash.message}</div>
<br>

<!-- LOGIN FORM -->

   <g:form controller="instructor" action="login" name="loginForm">
   <p class="info">
        Please login with your Instructor Id and password. <br />
      </p>
<br>
       <div><p class="info">Instructor Id *</p></div>
       <div id ="errors"><g:textField name="instructorId"
                    value="${fieldValue(bean:loginCmd, field:'instructorId')}"> </g:textField><g:renderErrors bean="${loginCmd}" as="list" field="instructorId"/> </div>
       <div><p class="info">Password *</p></div>
       <div id ="errors"><g:passwordField name="password"></g:passwordField> <g:renderErrors bean="${loginCmd}" as="list" field="password"/></div>
       <br/>
       <g:submitButton class="loginButton" name="Login" value="Login"></g:submitButton>
    </g:form>


<div id="footer">
<hr>
<br>
    &#169; SHU Registration 2013. All rights reserved.
    
<g:if test="${session.instructor}">

    <ul class="footer_navi">
         <li><g:link controller="home" action="index" class="transition">Home</g:link></li>
        <li><g:link controller="session" action="active" class="transition">Active Sessions</g:link></li>
	
        
    </ul>

</g:if>

</div>
    
</div>
</div>

<r:layoutResources/>
</body>
</html>
