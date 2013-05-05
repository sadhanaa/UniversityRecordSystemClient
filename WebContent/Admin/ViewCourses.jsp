<!-- Sadhana -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="entity.*"%>
<%@ page import="connection.*"%>


<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %>
<jsp:forward page="LogIn.jsp" />
<%  }
 else if (admin.isValid()) {  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Movies</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">

</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>

	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<h3>View Courses</h3>
			<p></p>
			<%
		String msg = request.getParameter("msg");
		if (msg != null) {
			if (msg.equals("false deleted")) {
				out.print("<div class=\"gagal\">Course can not be deleted</div>");
			} else if (msg.equals("true deleted")) { 
				out.print("<div class=\"sukses\">Course has been deleted</div>");
			}   
		}
	%>
			<% 
		List<Course> courses = new ServiceService().getService().viewAllCourse();
	%>
			<table class="data">
				<tr class="data">
					<th class="data" width="30">ID</th>
					<th class="data">Course Name</th>
					<th class="data">Course Location</th>
					<th class="data">Instructor</th>
					<th class="data">Course Hours</th>
					<th class="data">Action</th>
				</tr>

				<% 
			if (courses !=null && courses.size() > 0) {
				for (int i = 0; i < courses.size(); i++) { 
					Course c = courses.get(i); 
					out.print("<tr class=\"data\"><td>" + c.getCourseId() + "</td><td>" + c.getName() + 
							"</td><td>"  + c.getLocation() + "</td><td>" + 
							c.getCourseTeachers() + "</td><td>" + c.getHours() + "</td>" );
					out.print("<td><form name=\"courseForm" + i + "\" method=\"post\" action=\"EditCourse\">"); 
					out.print("<input type=\"hidden\" name=\"id\" value="+ c.getCourseId() + ">");
					out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
					out.print("</form></td></tr>");
				}
			} else { 
				out.print("No courses - Try another!"); 
			}		
			%>
			</table>

		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
