<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="edu.sjsu.videolibrary.jspHelper.ViewAccountHelper"%>
<%@page import="edu.sjsu.videolibrary.jspHelper.ViewMoviesHelper"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="edu.sjsu.videolibrary.model.Transaction"%>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<%@ page import="utilities.UtilsClient"%>
<%
 	if(!UtilsClient.validateLogin(request, response)) {
 		return;
 	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<title>View Account</title>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
		<h3>View Monthly Statement</h3>
		<div style="padding-top:20px;" >
			<table border="0">
			<tr>
			<td><a href="UpdateUserInfo" class="button">Update UserInformation</a></td>
			<td><a href="UpdatePasswordInfo" class="button">Update Password</a></td>
			</tr>
			</table>
		</div>
		
		<div class="clear"></div>
	
		<%
			Transaction[] trans = ViewAccountHelper.getUserTransactions(request, response);
			if (trans != null && trans.length != 0) {
		%>
		<table class="data">
			<tr class="data">
				<th class="data">Movie Name</th>
				<th class="data">Rent Amount/Movie</th>
				<th class="data">Rent Date</th>
				<th class="data">Return Date</th>
			</tr>
	
			<%
				for (Transaction tran : trans) {
			%>
			<tr class="data">
				<td><%=tran.getMovieName()%></td>
				<td><%=tran.getPerMovieAmount()%></td>
				<td><%=tran.getPurchaseDate()%></td>
				<td><%=tran.getReturnDate()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<%
			} else {
		%>
		<div class="clear"></div>
		<p><b>Currently you don't have any transaction associated with your
			account.</b></p>
		<%
			}
		%>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>