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


			<h1>${courseInstance?.courseName}</h1>


	<table class = 'table table-striped table-hover'>
	    <tr>
		<td><b>Course ID</b></td>
		<td><b>Course Name</b></td>
		<td><b>Course Description</b></td>
		<td><b>Modules</b></td>
	   </tr>
         </thead>
         <tbody>
	
	  <tr>
		<td>${courseInstance?.courseId}</td>
		<td>${courseInstance?.courseName}</td>
		<td>${courseInstance?.courseDescription}</td>
		<td><g:each in="${courseInstance.modules}" var="m">
						<span class="property-value" aria-labelledby="modules-label"><g:link controller="module" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link><br/></span>
						</g:each></td>
	   </tr>
	  
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
