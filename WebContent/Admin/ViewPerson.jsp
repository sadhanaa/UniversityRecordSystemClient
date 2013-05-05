<!-- Sadhana -->


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
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
<title>View Person</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<h3>View Persons</h3>
			<p></p>
			<%
				String msg = request.getParameter("msg");
					if (msg != null) {
						if (msg.equals("false") || msg.equals("error")) {
							out.print("<div class=\"gagal\">Account can not be modified</div>");
						} else if (msg.equals("true")) {
							out.print("<div class=\"sukses\">Account has been updated</div>");
						} else if (msg.equals("superadmin")) {
							out.print("<div class=\"gagal\">SuperAdmin can not be deleted</div>");
						} else if (msg.equals("delete true")) {
							out.print("<div class=\"sukses\">Account has been deleted</div>");
						} else if (msg.equals("delete false")) {
							out.print("<div class=\"gagal\">Account can not be deleted</div>");
						} else if (msg.indexOf("Error") >= 0) {
							out.print("<div class=\"gagal\">" + msg + "</div>");
						} else if (msg.indexOf("updated") >= 0) {
							out.print("<div class=\"sukses\">" + msg + "</div>");
						}
					}
			%>
			<form name="form" id="viewPersonsForm" method="get"
				action="ViewPerson.jsp">
				<table width="95%">
					<tr>
						<td width="125px"><b>Person Type: </b></td>
						<td><select name="type" id="personSelectBox">
								<%
									String type = request.getParameter("type");
										if (type == null)
											type = "All";
										String types[] = { "All", "Instructor", "Student" };
										for (int i = 0; i < types.length; i++) {
											String sel = "";
											if (type != null) {
												if (type.equals(types[i])) {
													sel = "selected";
												}
											}
											out.println("<option value=\"" + types[i] + "\"" + sel
													+ ">" + types[i] + "</option>");
										}
								%>
						</select></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" class="button" value="Submit">
						</td>
					</tr>
				</table>
			</form>
			<%
				Service myService = new ServiceService().getService();
					System.out.println("Type " + type);

					String pageStr = request.getParameter("page");
					int currentPage = 1;
					if (pageStr != null) {
						currentPage = Integer.parseInt(pageStr);
						if (currentPage < 1) {
							currentPage = 1;
						}
					}
					int previousPage = currentPage - 1;
					int nextPage = currentPage + 1;
					int offset = (currentPage * 20) + 1;

					List<Instructor> instructors = null;
					List<Person> persons = null;
					
					if ("Instructor".equals(type)) {
						instructors = myService.viewAllInstructors();
					} else if("Student".equals(type)) {
						persons = myService.viewAllStudents();
					} else {
						// type == "All"s
						persons = myService.viewAllPerson();
					}

					//members = myService.(type, offset, 20);
					//members = proxy.viewMembers(type);

					if (currentPage > 1) {
						out.print("<a href=\"ViewPerson.jsp?memberType=" + type
								+ "&page=" + previousPage + "\"> Previous </a>");
					}

					/*
					if (members.length == 20) {
						out.print("<a href=\"ViewPerson.jsp?memberType=" + type
								+ "&page=" + nextPage + "\"> Next </a>");
					}*/

					if (persons != null || instructors != null) {
			%>
			<table class="data">
				<tr class="data">
					<th class="data" width="30">Person ID</th>
					<th class="data">Name</th>
					<th class="data">Address</th>
					<th class="data">Action</th>
				</tr>
				<%
					if("Instructor".equals(type)) {
						for (int i = 0; i < instructors.size(); i++) {
							Person m = members[i];
							out.print("<tr class=\"data\"><td>" + m.getPersonId()
									+ "</td><td>" + m.getFirstName() + " "
									+ m.getLastName() + "</td><td>"
									+ m.getAddress() + "</td>");
							out.print("<td><form name=\"personForm" + i
									+ "\" method=\"post\" action=\"EditPerson\">");
							out.print("<input type=\"hidden\" name=\"id\" value="
									+ m.getPersonId() + ">");
							out.print("<input type=\"hidden\" name=\"type\" value="
									+ type + ">");
							out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
							out.print("</form></td></tr>");
						}
					} else {
						for (int i = 0; i < persons.size(); i++) {
							Person m = members[i];
							out.print("<tr class=\"data\"><td>" + m.getPersonId()
									+ "</td><td>" + m.getFirstName() + " "
									+ m.getLastName() + "</td><td>"
									+ m.getAddress() + "</td>");
							out.print("<td><form name=\"personForm" + i
									+ "\" method=\"post\" action=\"EditPerson\">");
							out.print("<input type=\"hidden\" name=\"id\" value="
									+ m.getPersonId() + ">");
							out.print("<input type=\"hidden\" name=\"type\" value="
									+ type + ">");
							out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
							out.print("</form></td></tr>");
						}
					}
					} else {
						out.println("<p>No person type provided. Please try again</p>");
					}
				%>
			</table>

		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
