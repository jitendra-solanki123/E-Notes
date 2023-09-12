package com.Servlet;


import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDao;
import com.Db.DBConnect;
import com.User.UserDetails;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException
	{
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		UserDetails us = new UserDetails();
		
		us.setEmail(email);
		us.setPassword(password);
		
		UserDao dao = new UserDao(DBConnect.getConn());
		UserDetails user = dao.loginUser(us);
		if(user!=null)
		{
			HttpSession session = req.getSession();
			session.setAttribute("UserD", user);
			resp.sendRedirect("home.jsp");
		}
		else
		{
			HttpSession session = req.getSession();
			session.setAttribute("login-failed", "Invalid UserName and Password");
			resp.sendRedirect("Login.jsp");
		}
	}
	
}