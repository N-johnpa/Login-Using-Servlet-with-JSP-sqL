<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Portal</title>
</head>
<body>

<center>
<h2><b>Study Material</b></h2></center>
<% 
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
 

 
 
 if(session.getAttribute("username")==null)
{  
	
	response.sendRedirect("Login.jsp");
	
}
%>


<h2><b>Welcome to EduBridge ${username}.</b></h2>
<p><h3>EduBridge is an Integrated Workforce Development Organization started by IIM alumni & professors in October 2009, EduBridge impacts the entire Career
Development life cycle of the unemployed youth of the country. 
We help the unemployed youth to understand their strengths, build tomorrow's  skills needed by recruiters and secure employment with them, 
thereby building sustainable careers for our beneficiaries.</h3></p>

<p><h3> With more than a decade of experience, we have trained over 150,000 youth and placed around 100,000 learners in more than 300 companies
across the country. We have an offline presence across 18 states, extensive local networks & ecosystems, tried and teste
tech architecture and strong relationships with recruiters, corporate and the youth; we have grown our online business as an Integrated
Workforce Development Platform for the youth‘s journey from a learner to a productive member of the workforce. </h3></p>




<a href="java.jsp ">   For Core Java  </a>  <br><br>
<a href="jpa.jsp ">   For JPA with Hibernate </a>  <br><br>
<a href="sql.jsp "> For DataBase & SQL Notes</a>  <br><br>
<a href="spring.jsp "> For Spring 5 Notes</a>   <br><br>
<a href="interviewskills.jsp "> For Interview Skills </a>   <br><br>

<center>
<form action ="log">
<input type ="submit" value ="Logout ${username}">
</center>


</body>
</html>

</body>
</html>