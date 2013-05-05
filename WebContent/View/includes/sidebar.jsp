<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="utilities.UtilsClient"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>

	<div id="leftBar">
	<ul>
		<li><a href="HomePage">Home</a></li>
		<li><a href="ViewAccount">Account</a></li>
		<li><a href="ViewCart">Cart</a></li>
		<li><a href="ViewMonthlyBill">Monthly Bill</a></li>
		<li><a href="ReturnMovie">Return</a></li>
		<% 
			User usr = UtilsClient.getUserSession(request);
			if (usr != null)
				if(usr.getMembershipType().equalsIgnoreCase("Premium")){
		%>	
		<li><a href="MakeMonthlyPayment">Pay Month</a></li>		
		<% 	} %>
		 
	</ul>
	</div>
 