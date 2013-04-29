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



<br>
<h2>Active Classes:</h2>
<hr width="17%"> 

<ul>
<g:each in ="${active_sheets}" var='ent'>
<br>
<li><h4><b>Session:</b> ${ent.session} // <b>Sheet Name:</b> ${ent.sheetName}</h4> </li>

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
