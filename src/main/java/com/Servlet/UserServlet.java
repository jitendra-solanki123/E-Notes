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

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException
	{
		
		String name = req.getParameter("fname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		UserDetails us = new UserDetails();
		
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		
		UserDao dao = new UserDao(DBConnect.getConn());
		
		boolean f = dao.adduser(us);
		
		HttpSession session;
		
		if(f)
		{
			session= req.getSession();
			session.setAttribute("reg-success", "Registration Successfully..");
			resp.sendRedirect("Register.jsp");
		}
		else
		{
			session = req.getSession();
			session.setAttribute("failed-msg", "Something went wrong on server..");
			resp.sendRedirect("Register.jsp");
		}
		
	}
	
}
