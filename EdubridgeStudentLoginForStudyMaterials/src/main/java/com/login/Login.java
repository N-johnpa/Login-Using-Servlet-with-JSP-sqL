package com.login;

import java.io.IOException;

//import com.login.Dao.LoginDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import  jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.annotation.WebServlet;




@WebServlet("/login")
public class Login extends jakarta.servlet.http.HttpServlet {
	
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
		
	String uname = request.getParameter("uname");
	String pass= request.getParameter("pass");
	LoginDao doa =new LoginDao();
	
	
	if(doa.check(uname, pass))
	{       
		    HttpSession session = request.getSession();
		    session.setAttribute("username", uname);
      		response.sendRedirect("StudentMaterial.jsp");
      		
	}
	else
	{
		response.sendRedirect("Login.jsp");
			
	}
	
	
	}

	}

