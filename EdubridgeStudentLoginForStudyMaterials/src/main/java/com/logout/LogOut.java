package com.logout;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/log")

public class LogOut  extends jakarta.servlet.http.HttpServlet {
	
	protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		//((HttpServletResponse) response).sendRedirect("login.jsp");
		//((HttpServletResponse) response).sendRedirect("Login.jsp");
		response.sendRedirect("Login.jsp");
	
}

}
