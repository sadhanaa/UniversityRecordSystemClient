<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.jspHelper.SignInUserHelper"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/validate.js"></script>
<title>Welcome!</title>
</head>
<body>
	<div id="header">
		<div class="inHeaderLogin"></div>
	</div>
	<div id="userloginForm">
		<div class="headLoginForm">
		Login Member
		</div>
		<%=SignInUserHelper.getLoginError(request)%>
		<div class="fieldLogin">
			<form id="form1" method="post" action="SignInUserServlet" onsubmit="return validateLogin()">
				 <label>User ID:</label><br>
				 <input type="text"  class="login" name="uid"/>
				 <br> 
				 <label>Password:</label>
				 <br>
				 <input type="password"  class="login" name="pwd"/> 
				 <br>
				 <input type="submit" class="button" value="Submit" />
				 <a class="button" href="SignUpUser">Register Here</a>
						
			</form>
		</div>
</div>
	
</body>
</html>