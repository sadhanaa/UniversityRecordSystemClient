<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="utilities.UtilsClient"%>
<%@page import="utilities.Parameters"%>
<%@page import="utilities.ClientConfig"%>
<%
	if(!UtilsClient.validateLogin(request, response)) {
		return;
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update User Information</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
	<h3>Update Information</h3>

	<%
		String error = request.getParameter("msg");
		if (error != null){
			if(error.equalsIgnoreCase("serverError")) 
				out.println("Update could not be performed.");				
		
			if(error.equalsIgnoreCase("successful"))
			out.println("Update Successful.");
			
			if(error.equalsIgnoreCase("duplicate")) {
				out.println("Duplicate user id provided");
			}
		
		}
	%>

	<%
		ServiceProxy proxy = UtilsClient.getServiceProxy();

			// Hard coded values
		User usrSession = UtilsClient.getUserSession(request);
		User usr = proxy.displayUserInformation(usrSession.getMembershipId());
		int id = usr.getMembershipId();
		if( usr.getCreditCardNumber() == null ) {
			usr.setCreditCardNumber("");
		}
	%>


	<%
		if (usr != null) {
	%>

	<form id="form1" method="post" action="UpdateUserInfoServlet">
	<table width="60%">
		<tr>
			<td>First Name </td>
			<td><input type="text" name="<%=Parameters.pFirstName%>"
				value=<%=usr.getFirstName()%> />
			</td>
		</tr>
		<tr>
			<td>Last Name </td>
			<td><input type="text" name="<%=Parameters.pLastName%>"
				value="<%=usr.getLastName()%>" />
			</td>
		</tr>
		<tr>
 			<td>Membership Type </td>
 			<td>
				<select name="<%=Parameters.pMembershipType%>" id="membershipType">
		    <%  String [] types = {"Simple", "Premium"}; 
		    	for(int i=0; i < types.length; i++){ %>
		    		<option value="<%= types[i] %>" <%= (types[i].equals(usr.getMembershipType().trim())) ?"selected" : "" %> ><%= types[i] %></option>  
			<% } %>
		    </select>
		    </td>
		  </tr>
		  <tr>
		  	<td>
 				User Id
 			</td>
 			<td>
 				<input type="text" name="<%=Parameters.pUserId%>"
				value="<%=usr.getUserId()%>" />
			</td>
			</tr>
			<tr>
				<td> Address</td>
				<td><input type="text" name="<%=Parameters.pAddress%>"
				value="<%=usr.getAddress()%>" /></td>
			</tr>
			<tr>
 				<td>City</td><td><input type="text" name="<%=Parameters.pCity%>" value="<%=usr.getCity()%>" /></td>
 			</tr>
 			<tr>
 				<td>State </td>
 				<td><select name="<%=Parameters.pState%>" id="state">
		    <%  String [] states = UtilsClient.getStates(); 
		    	for(int i=0; i < states.length; i++){ %>
		    		<option value="<%= states[i] %>" <%= (states[i].equalsIgnoreCase(usr.getState())) ? "selected" : "" %> ><%= states[i] %></option>  
			<% } %>
		    	</select></td>
		    </tr>
		    <tr>
		    	<td>ZipCode</td>
		    	<td><input type="text" name="<%=Parameters.pZip%>" value="<%=usr.getZip()%>" /></td>
		    </tr>
		    <tr>
 				<td>Credit Card # </td>
 				<td><input type="text" name="<%=Parameters.pCreditCard%>"
				value="<%=usr.getCreditCardNumber()%>" />
				</td>
			</tr>
 			<tr>
 				<td><input type="hidden" name="<%=Parameters.pMembershipId%>"
				value="<%= usr.getMembershipId()%>">
				</td>
				<td>
 				<input class="button" type="submit" value="Update">
 				</td>
 			</tr>
 			</table>
 	</form>
	<% } else { %>
		<div class="clear"> </div>
		<b> No record Found.</b>
	<% }  %>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>