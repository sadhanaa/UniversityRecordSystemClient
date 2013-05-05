<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Admin"%>
<%@ page import="entity.Course"%>
<%@ page import="connection.Service"%>

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
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js"></script>
<title>Edit Movie</title>
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>

	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<%
				Course m = (Course) session.getAttribute("currentCourse");
					if (m != null) {
			%>
			<%
				String msg = request.getParameter("msg");
						if (msg != null) {
							if (msg.equals("error") || msg.equals("false")) {
								out.print("<div class=\"gagal\">Please verify your information</div>");
							} else if (msg.equalsIgnoreCase("duplicate")) {
								out.print("<div class=\"gagal\">Course already exists</div>");
							} else if (msg.indexOf("true") >= 0) {
								out.print("<div class=\"sukses\">Course has been updated</div>");
							}
						}
			%>
			<h3>Edit Course</h3>

			<form name="CreateCourseForm" method="post" action="EditCourse"
				onsubmit="return validateCreateCourse()">

				<table width="95%">
					<tr>
						<td><label for="idcourse">Course ID:</label> <%=m.getCourseId()%>
							<input type="hidden" name="CourseId" id="CourseId"
							value="<%=m.getCourseId()%>" /></td>
						<td><label for="name">Course Name:</label> <%=m.getName()%>
							<input type="hidden" name="CourseName" id="CourseName"
							value="<%=m.getName()%>" /></td>
					</tr>
					<tr>
						<td width="125px"><b>Course Section:</b></td>
						<td><input type="text" name="section" id="section"
							value="<%=m.getSection()%>"></td>
					</tr>
					<tr>
						<td width="125px"><b>Course Location:</b></td>
						<td><input type="text" name="location" id="location"
							value="<%=m.getLocation()%>"></td>
					</tr>
					<tr>
						<td width="125px"><b>Course Hours:</b></td>
						<td><input type="text" name="hours" id="hours"
							value="<%=m.getHours()%>"></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" class="button" name="act"
							value="Update" /> <input type="submit" class="button"
							name="act" value="Cancel" /></td>
					</tr>
					<%
						}
					%>
				</table>
			</form>

			<%
				} else {

				}
			%>
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
</body>
</html>
