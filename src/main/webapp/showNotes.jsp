<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.DAO.PostDAO" %>
<%@ page import="com.Db.DBConnect" %>
<%@page import = " java.util.List" %>
<%@ page import="com.User.*" %>
<!-- HttpSession is used to security purpose -->
<%
UserDetails user3 = (UserDetails) session.getAttribute("UserD");
if (user3 == null) {
	response.sendRedirect(" Login.jsp ");
	session.setAttribute("Loginerror", "Please Login..");
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Notes</title>
<%@ include file="allcomponent/allcss.jsp"%>
</head>
<body>
	<%@ include file="allcomponent/navbar.jsp"%>

	<div class="container">
		<h1 class="text-center">All Notes</h1>
        

		<%
		if (user3 != null) {
			PostDAO ob = new PostDAO(DBConnect.getConn());
			List<Post1> post1 = ob.getData(user3.getId());
			for (Post1 po : post1) {
		%>

		<div class="card mt-3">
			<img alt="" src="image/addNotesimage.jpg"
				class="card-img-top mt-2 mx-auto" style="max-width: 100px;">



			<div class="card-body p-4">
				<h5 class="card title"><%= po.getTitle() %></h5>
				<p><%=po.getContent() %>.</p>


				<p>
					<b class=" text-success">Published by:<%=po.getUser() %></b><br> <b
						class="text-primary"></b>

				</p>
				<p>				
					<b class=" text-success">Published Date:<%=po.getPdate() %></b><br> <b
						class="text-primary"></b>

				</p>

				<div class="container  text-center mt-2">
					<a href="DeleteServlet?note_id" class="btn btn-danger">Delete</a> <a
						href="edit.jsp?note_id" class="btn btn-success">Edit</a>

				</div>

			</div>


		</div>

		<%
		}
		}
		%>






	</div>
</body>
</html>