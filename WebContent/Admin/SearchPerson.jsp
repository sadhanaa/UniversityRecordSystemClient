<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.*" %>
<%@ page import="connection.*" %>
 
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  }
 else if (admin.isValid()) {  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Person</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js" ></script>

</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>	
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Search Person</h3>
		
 


<form name="adminInfoForm" method="post" action="SearchPerson">
  	<table width="95%">
 		<tr>
			<td>Search a User by:</td><td></td>		</tr>	
			<tr><td>Person Id</td><td><input type="text" name="personId"></td></tr>
					<tr><td>Person Type</td><td>
		    <select name="personType" id="personType">
		    			<option value="">Any</option>
			<%  String [] types = {"Student", "Instructor"}; 
		    	for(int i=0; i < types.length; i++){ %>
		    		<option value="<%= types[i] %>" ><%= types[i] %></option>  
			<% } %>
			</select>
			</td></tr>
		<tr>	<td>First Name</td><td><input type="text" name="firstName"></td>	</tr>
		<tr>	<td>Last Name</td><td><input type="text" name="lastName"></td></tr>
		<tr>	<td>Address</td><td><input type="text" name="address"></td></tr>
		<tr>	<td>State</td><td>		    <select name="state" id="state">
			<option value="">Any</option>
			
		    </select></td>	</tr>			
		<tr><td><input type="submit" class="button" name="search" value="Search"></td><td></td>
		</tr>	
    </table> 
</form>
 
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<%  } %> 
