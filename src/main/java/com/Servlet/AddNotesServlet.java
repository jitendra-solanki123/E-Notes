package com.Servlet;
import com.DAO.PostDAO;
import com.Db.DBConnect;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		int uid = Integer.parseInt(req.getParameter("uid"));
		String title = req.getParameter("title");
		String Content = req.getParameter("content");
		
	   PostDAO dao = new PostDAO(DBConnect.getConn());
	   boolean f = dao.AddNotes(title, Content, uid);
	   
	   if(f)
	   {
		   System.out.println("data insert Successfully ");
	   }
	   else
	   {
		   System.out.println("data not Inserted");
	   }
	}

}
