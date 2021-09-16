<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SQL</title>
<style>
 .container{ padding :30px;}
</style>
</head>
<body>



<% 


response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
 
 if(session.getAttribute("username")==null)
{ 
	
		response.sendRedirect("Login.jsp");
	
}
%>
<!--  <div class ="container">

<embed src="C:\Users\JOHN\eclipse-workspace\EdubridgeStudentLoginForStudyMaterials\src\main\webapp\Core Java 8.pdf" type ="application/pdf" width ="100%" height = "600% " />



</div>


-->
<h2>Hello ${username}, Viewing of this pdf is restricted. If you are interested in viewing it,<a href=" https://www.edubridgeindia.com/"> PLEASE click the link</a> </h2>
<!--  <h3>I don't have right to Share the Pdf</h3> -->

<center>
<form action ="log">
<input type ="submit" value ="Logout ${username}">
</center>


</body>
</html>