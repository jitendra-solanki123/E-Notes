<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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
						<i class="fa fa-user fa-3x" aria-hidden="true"></i>


						<h4>Login</h4>
					</div>

					<!-- Card header end -->
					<!-- Session method Used -->
					
					<%
					String Failed = (String) session.getAttribute("login-failed");
					if (Failed != null) 
					{
					%>
					<div class="alert alert-danger" role="alerts"><%=Failed%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					
					
					<%
					
					String withoutLogin = (String)session.getAttribute("Loginerror");
					if(withoutLogin!=null)
					{
					%>
					<div class="alert alert-danger" role="alerts"><%=withoutLogin%></div>
					<%
					session.removeAttribute("Loginerror");
					}
					%>
					
					<!-- Logout servlet1 page  -->
					
					<%
					  String lgMsg = (String) session.getAttribute("logoutMsg");
					   if(lgMsg!=null)
					   {
					%>
					
						<div class="alert alert-success" role="alerts"><%=lgMsg%></div>
					<%
					session.removeAttribute("logoutMsg");
					   }
					%>
					
					<!-- Card Body start -->
					<div class="card-body">

						<!-- Form created -->
						<form action="loginServlet" method="post">

							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
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

	<%@ include file="allcomponent/footer.jsp"%>


</body>
</html>