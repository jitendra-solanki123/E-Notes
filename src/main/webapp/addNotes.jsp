<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	UserDetails user1 = (UserDetails)session.getAttribute("UserD");
	    if(user1==null)
	    {
	    	response.sendRedirect("Login.jsp");
	    	session.setAttribute("Loginerror"," Please Login..");
	    }
	%>
	
	
	
	
	<%@page import="com.User.UserDetails" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@ include file="allcomponent/allcss.jsp"%>
</head>
<body>

    <div class="container-fluid p-0 mb-5">
      <%@ include file="allcomponent/navbar.jsp"%>
    
    <h1 class="text-center mt-3">Add Your Notes</h1>
    
    
    <div class="container ">
    
<div class="row">
			<div class="col-md-12">
				<form action ="AddNotesServlet" method="post">
					<div class="form-group">
					
					<%
					UserDetails us	= (UserDetails) session.getAttribute("UserD");
					
					if(us!=null){
					%>
					<input type="hidden" value="<%=us.getId()%>" name="uid">
					
					<%
					}
					%>
					
						<label for="exampleInputEmail1">Enter Title</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="title" required="required"> 
					</div>
					<div class="form-group">
					<label for="exampleInputEmail1">Enter Contents</label>
					<textarea rows="9" cols="" class="form-control" name="content" required="required"></textarea>
					
					</div>
					<div class="container text-center">
						<button type="submit" class="btn btn-primary">Add Notes</button>
					
					</div>
				
				</form>
				
			</div>
		</div>

	</div>
    </div>
    
    
     <%@ include file="allcomponent/footer.jsp" %>
    
</body>
</html>