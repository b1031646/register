<!DOCTYPE html>
<head>	
<title>SHU Registration | My Account</title>

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
<p id="category_nav">
<FONT COLOR="#1a3b42">Categories: 
<g:link controller="instructor" action="edit_details" id="${session.instructor.id}">Edit Your Personal Details</g:link> 
</font>
</p>


<br/>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>




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
