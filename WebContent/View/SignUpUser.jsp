<%@page import="utilities.ClientConfig"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="utilities.Parameters"%>
<%@ page import="utilities.UtilsClient"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/validate.js"></script>
<title>Sign up User</title>

</head>
<body>
<div id="header">
	<div class="inHeaderLogin"></div>
</div>
<div id="wrapper">
	<div id="rightContent">
<h3>Sign Up</h3>

<form id="form1" method="post" action="SignUpUserServlet" onsubmit="return validateForm()" >
	<table>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="uid" /></td>
					<td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pwd" /></td>
					<td>
				</tr>
				<tr>
					<td>Membership Type</td>
					<td><select id="mem" name="<%=Parameters.pMembershipType%>">
					<option value="Simple">Simple</option>
  					<option value="Premium">Premium</option>
					</select></td>
					<td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="fname" /></td>
					<td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lname" /></td>
					<td>
				</tr>
				<tr>
					<td>Street Address</td>
					<td><input type="text" name="stAddress" /></td>
				</tr>
				<tr>
					<td>City</td>
					<td><input type="text" name="city" /></td>
				</tr>
				<tr>
					<td>State</td>
					<td><select name="<%=Parameters.pState%>" id="state">
		    <%  String [] states = UtilsClient.getStates(); 
		    	for(int i=0; i < states.length; i++){ %>
		    		<option value="<%= states[i] %>" ><%= states[i] %></option>  
			<% } %>
		    </select></td>
				</tr>
				<tr>
					<td>Zip Code</td>
					<td><input type="text" name="zip" /></td>
				</tr>
				<tr>
					<td>Credit Card Number</td>
					<td><input type="text" name="ccnum" /></td>
					<td>
				</tr>
			</table>
			<br>
			<input type="submit" class="button" value="Submit" />
			<a href="<%=ClientConfig.USER_LOGIN%>" class="button">Cancel</a>
</form>
</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>