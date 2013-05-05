<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Admin" %>
<%@ page import="entity.Person" %>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  }
 else if (admin.isValid()) {  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Admin</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js" ></script>

</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>	
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Edit Admin</h3>
		
<% 
	Admin user = (Admin) session.getAttribute("currentMember");	
	if (user != null) { 
%>    

<form name="adminInfoForm" method="post" action="EditAdmin" onsubmit="return validateEditAdmin();">
  	<table width="95%">
		<tr>
			 <td width="125px"><b>Admin ID: </b></td>
			 <td> <%= user.getAdminId() %>
			 			 <input type="hidden" name="userId" id="userId" value="<%= user.getAdminId()  %>" /> 
			 </td>			
		</tr>
		<tr>
			 <td width="125px"><b>First Name:</b></td>
			 <td>    <input type="text" name="firstName" id="firstName" value="<%= user.getFirstName() %>"></td>
		</tr>
 		<tr>
			 <td width="125px"><b>Last Name:</b></td>
			 <td>    <input type="text" name="lastName" id="lastName" value="<%= user.getLastName() %>"></td>
		</tr>
 		<tr>
			 <td width="125px"><b>New Password:</b></td>
			 <td> <input type="text" name="newPassword" id="newPassword" value=""></td>
		</tr> 
 		<tr>
			<td></td>
			<td>   <input type="submit" class="button"  name="act" value="Update"  />  <input type="reset" class="button" value="Clear"  />  </td> 		
 		</tr>
   </table> 
</form>
<% }  %>
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<%  } %> 
