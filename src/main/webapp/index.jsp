<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.back-img{
      
      background: url("image/enotesimg.jpg");
      width:100%;
      height:80vh;
      background-repeat:no repeat;
      background-size: cover;
}
</style>
<meta charset="UTF-8">
<title>Home page</title>

<%@include file="allcomponent/allcss.jsp"%>

</head>
<body>
  <%@include file="allcomponent/navbar.jsp"%>
  
  
  <div class="container-fluid back-img">
       <div class="text-center p-4">
         <h1 class="text-white "><i class="fa fa-book" aria-hidden="true"></i>
         E Notes - Save Your Notes</h1>
         <a href="Login.jsp" class="btn btn-light mr-1">Login</a>
         <a href="Register.jsp" class="btn btn-light">Register</a>
       </div>
  
  </div>
  
  <%@ include file="allcomponent/footer.jsp" %>
</body>
</html>