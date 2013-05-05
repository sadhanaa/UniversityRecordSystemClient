<%@page import="utilities.Parameters"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="edu.sjsu.videolibrary.jspHelper.ReturnMovieHelper"%>
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
<title>Return Movie</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
<p>
<%=ReturnMovieHelper.getReturnMovieMessage(request) %>
</p>
	<%
		Transaction[] trans = ReturnMovieHelper.getMovies(request, response);
		if (trans != null && trans.length != 0) {
	%>
	<table width="60%" class="data">
		<tr class="data">
			<th class="data">Movie Name</th>
			<th class="data">Rent Date</th>
			<th class="data" width="100">Return Movie</th>
		</tr>

		<%
			for (Transaction tran : trans) {
		%>
		<tr class="data">
			<td><%=tran.getMovieName()%></td>
			<td><%=tran.getPurchaseDate()%></td>
			<td>
			<form action="ReturnMovieServlet" method="post">
			<input type="hidden" name="<%=Parameters.pMovieId%>" value="<%=tran.getMovieId()%>"/>
			<input type="submit" class="button" value="Return Movie"/>
			</form>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		} else {
	%>
	<b>Currently No Movies pending to Return.</b>
	<%
		}
	%>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>