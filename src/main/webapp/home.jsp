<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- HttpSession is used to  security purpose -->
    
	<%
	UserDetails user2 = (UserDetails)session.getAttribute("UserD");
	    if(user2==null)
	    {
	    	response.sendRedirect("Login.jsp");
	    	session.setAttribute("Loginerror"," Please Login..");
	    }
	%>
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<%@ include file="allcomponent/allcss.jsp" %>
</head>
<body>


 <div class="container-fluid p-0 mb-5">
 
 <%@ include file="allcomponent/navbar.jsp" %>
    <div class="card py-5 ">
        <div class="card-body text-center ">
              <img alt="" src="image/addNotesimage.jpg" class="img-fluid mx-auto" style=" max-width: 350px">
              <h1>START TAKING YOUR NOTES</h1>
              <a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
        </div>
    </div>
 

 </div>
 <%@ include file="allcomponent/footer.jsp" %>
</body>
</html>