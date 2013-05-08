SHU Electronic Register
=
Context
=
Development of this application has allowed me to explore the Model-View-Controller design pattern and the use of git 
as a code repository. It has also allowed me to explore the use of git branches to hold development stages and 
exploratory work. The application delivers a RESTful web interface and also explores the use of content negotiation 
to return JSON and XML as well as a HTML view.<br>

<b>Checkout/Obtain</b><br>
=
Github Checkout URL: https://github.com/b1031646/register.git
<br>
The git project is split into three branches:<br>
<br>
• Develop<br>
•	Build<br>
•	Release<br>
<br>
I performed the development of the app on the develop branch and now the app is complete I have merged all three branches together.
The final version of the software is now ready for checkout from the release branch. <br>
<br>
<b>Clone the project to your local disk</b> <br>
=
Open a terminal window and navigate to the directory where you would like to store the project. Then use the command:<br>

git clone https://github.com/b1031646/register.git<br>

This will clone the project to your local disk.<br>

<b>Configure</b>
=
The project needs a local MySQL database to run, details of which are below:<br>
<br>
<b>Database Name:</b>	registerdb<br>
<b>Username:</b>	webarch<br>
<b>Password:</b>	webarch<br>

Please Note - These details would be changed in a production environment but are fine for the development as it stands.

The MySQL database can be created using this command:

<i>create database registerdb default charset utf8 default collate utf8_bin; </i>

The character set encoding is important as the web application is capable of accepting UTF8 input.

The project is a groovy/grails project and needs an installed Java7 JDK and installed grails SDK (http://www.grails.org)

The grails DataSource.groovy file is pre-configured with the above details. Once the MySQL database has been set-up then the app should run without any problems.

<b>Build / Run<b/>
=
Once the MySQL database has been configured navigate into the application directory and use the command:

<i>grails run-app</i>

This will build and run the application. You will then be presented with a link to open the application in your browser window. 


