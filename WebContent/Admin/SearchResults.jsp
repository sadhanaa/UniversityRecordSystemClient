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
<title>View Persons</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Search Persons</h3>


			<%
				List<Person> persons = (List<Person>) session
							.getAttribute("personsList");
			%>
			<%
				if (persons != null) {
			%>
			<table class="data">
				<tr class="data">
					<th class="data" width="30">Person ID</th>
					<th class="data">Name</th>
					<th class="data">Person Type</th>
					<th class="data">Address</th>
					<th class="data">Action</th>
				</tr>
				<%
					for (int i = 0; i < persons.size(); i++) {
								Person m = persons.get(i);
								out.print("<tr class=\"data\"><td>" + m.getPersonId()
										+ "</td><td>" + m.getFirstName() + " "
										+ m.getLastName() + "</td><td>"
										+ m.getPersonType() + "</td><td>"
										+ m.getAddress() + "</td>");
								out.print("<td><form name=\"personForm" + i
										+ "\" method=\"post\" action=\"EditPerson\">");
								out.print("<input type=\"hidden\" name=\"id\" value="
										+ m.getPersonId() + ">");
								out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
								out.print("</form></td></tr>");
							}
						} else {
							out.print("<p>No persons. Try another search options!</p>");
						}
				%>
			</table>
			<a href="SearchPerson.jsp" class="button">Search Again</a>

		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<%
	}
%>
