<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="entity.*"%>


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
<title>View Members</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Search Movie</h3>


			<%
				List<Course> courses = (List<Course>) session
							.getAttribute("coursesList");
			%>
			<%
				if (courses != null) {
			%>
			<table class="data">
				<tr class="data">
					<th class="data" width="30">Course ID</th>
					<th class="data">Course Name</th>
					<th class="data">Course Location</th>
					<th class="data">Course Hours</th>
					<th class="data">Course Instructor</th>

				</tr>
				<%
					for (int i = 0; i < courses.size(); i++) {
								Course m = courses.get(i);
								out.print("<tr class=\"data\"><td>" + m.getCourseId()
										+ "</td><td>" + m.getName() + "</td><td>"
										+ m.getLocation() + "</td><td>" + m.getHours()
										+ "</td><td>" + m.getCourseTeachers() + "</td>");
								out.print("<td><form name=\"courseForm" + i
										+ "\" method=\"post\" action=\"EditCourse\">");
								out.print("<input type=\"hidden\" name=\"id\" value="
										+ m.getCourseId() + ">");
								out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />  <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
								out.print("</form></td></tr>");
							}
						} else {
							out.print("<p>No courses - Try another search!</p>");
						}
				%>
			</table>
			<a href="SearchCourse.jsp" class="button">Search Again</a>

		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<%
	}
%>
