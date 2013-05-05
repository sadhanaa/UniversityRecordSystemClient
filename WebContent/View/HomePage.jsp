<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<%@ page import="edu.sjsu.videolibrary.jspHelper.HomePageHelper"%>
<%@ page import="java.util.Map"%>
<%@ page import="utilities.UtilsClient"%>
 <%
 	//if(!UtilsClient.validateLogin(request, response)) {
 	//	return;
 	//}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
 <link rel="stylesheet" type="text/css" href="../css/admin-style.css">
 </head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
	<h3>Choose from the following options:</h3>
<jsp:include page="includes/movieSearch.jsp"></jsp:include>

 <h3>View Movies By Category</h3>
		<%
			Map<String,String> categories = HomePageHelper.getCategories();
			for(Map.Entry<String,String> category : categories.entrySet()) {
		%>
		<div class="shortcutHome">
		<a href="<%=category.getValue()%>"><img src="../css/img/halaman.png"><br><%=category.getKey()%></a>
		</div>
		<%	} %>
		<div class="clear"></div>
		<p><a href="ViewMovies" class="button">View All Movies</a></p>
		</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>