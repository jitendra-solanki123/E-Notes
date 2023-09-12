package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			 HttpSession session = req.getSession();
			 session.removeAttribute("UserD");
			 
			 HttpSession session2 = req.getSession();
			 session.setAttribute("logoutMsg", "Logout Successfully..");
			 resp.sendRedirect("Login.jsp");
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
