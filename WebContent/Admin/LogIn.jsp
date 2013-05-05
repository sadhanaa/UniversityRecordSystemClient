<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Admin" %>
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null )  { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js"></script>
</head>

 <body> 
<div id="header">
	<div class="inHeaderLogin"></div>
</div>
<div id="loginForm">
	<div class="headLoginForm">
	Login Administrator
	</div>
	<div class="fieldLogin">
 <form action="SignInAdmin" id="aloginForm" method="post" onsubmit="return validateLogin();">
	 <label>Admin:</label><br>
	 <input type="text"  class="login" name="userId"/>
	 <br> 
	 <label>Password:</label>
	 <br>
	 <input type="password"  class="login" name="password"/> 
	 <br>
	 <input type="submit"class="button"   value="submit"> 
 </form>
	</div>
</div>
 </body>
</html>
<% } else if (admin.isValid()) { %><jsp:forward page="Home.jsp" /><% } %>