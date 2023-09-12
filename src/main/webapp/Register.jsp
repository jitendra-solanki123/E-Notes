<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
                                    <!-- Added allCss File -->
                                    
<%@ include file="allcomponent/allcss.jsp"%>
</head>
<body>
                          <!-- Added NavBar File -->
                          
	<%@ include file="allcomponent/navbar.jsp"%>

	<div class="container-fluid p-3 div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
			
			              <!--  Card Start -->
				<div class="card">
				
				          <!-- Card header Start -->
				          
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>

						<h4>Registration</h4>
					</div>
					
					      <!-- Card header end -->
					      <!-- alert   Session  start -->
					   
                         
                         <%
                             String regMsg = (String)session.getAttribute("reg-success");
                          if(regMsg!=null)
                          {
                        	 
                        	%>  
                        	 <div class="alert alert-success" role="alerts"><%= regMsg %>Login <a href="Login.jsp">Click here..</a></div>
                        	 
                           <% 
                           session.removeAttribute("reg-success");
                          }
                         
                         %>
                         
                         <%
                              String failed = (String)session.getAttribute("failed-msg");
                            if(failed!=null)
                            {
                            	%>
                            	<div class="alert alert-danger" role="alerts"><%= failed %></div>
                            	<%
                            	
                            session.removeAttribute("failed-msg");	
                            }
                         
                         %>
                         
					      <!-- alerts Session end -->
					      <!-- Card Body start -->
					<div class="card-body">
					
					       <!-- Form created -->
						<form action ="UserServlet" method="post">
						   <div class="form-group">
								<label>Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
						
							</div>
							<div class="form-group">
								<label>Enter Email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">
						
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" name="password">
							</div>
						
							<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
                               
                                       <!-- Form end -->
					</div>
                                       
                                       <!-- Card Body end -->
				</div>
                                       
                                       <!-- Card end -->
			</div>
		</div>
              
                
        </div>
                     
                                       <!-- added Footer File -->
        
   	<%@ include file="allcomponent/footer.jsp" %>
	       
	
</body>
</html>