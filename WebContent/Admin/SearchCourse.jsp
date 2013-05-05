<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="entity.*"%>
<%@ page import="connection.*"%>

<%
	Admin admin = (Admin) session.getAttribute("currentAdmin");
	if (admin == null) {
%>
<jsp:forward page="LogIn.jsp" />
<%
	} else if (admin.isValid()) {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Movie</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js"></script>

</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Search Course</h3>
			<form name="adminInfoForm" method="post" action="SearchCourse">
				<table width="95%">
					<form method="get" action="SearchedCourses">
						<table>
							<tr>
								<td>Search a Course by:</td>
								<td></td>
							</tr>
							<tr>
								<td>Course Name</td>
								<td><input type="text" name="courseName" /></td>
							</tr>
							<tr>
								<td>Course ID</td>
								<td><input type="text" name="courseId" /></td>
							</tr>
							<tr>
								<td>Course Location</td>
								<td><input type="text" name="courseLocation" /></td>
							</tr>
							<tr>
								<td>Course Hours</td>
								<td><input type="text" name="courseHours" /></td>
							</tr>
						</table>
					</form>
					</div>
					<jsp:include page="includes/footer.jsp"></jsp:include>
					</div>
</body>
</html>
<%
	}
%>
