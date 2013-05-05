<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Admin"%>
<%@ page import="entity.Course"%>
<%@ page import="entity.Person"%>

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
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Member</title>
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<%
				String msg = request.getParameter("msg");
					if (msg != null) {
						if (msg.indexOf("Error") >= 0) {
							out.print("<div class=\"gagal\">" + msg + "</div>");
						} else if (msg.indexOf("updated") >= 0) {
							out.print("<div class=\"sukses\">" + msg + "</div>");
						} else if (msg.indexOf("Invalid") >= 0 || msg.equals("")) {
							out.print("<div class=\"gagal\">" + msg + "</div>");
						}
					}
			%>
			<h3>Edit Member</h3>


			<%
				Person person = (Person) session.getAttribute("currentMember");
					if (person != null) {
			%>
			<form name="userInfoForm" method="post" action="EditPerson"
				onsubmit="return validateUpdateUser();">
				<table width="60%">
					<tr>
						<td><label for="personId">Person ID:</label></td>
						<td><%=person.getPersonId()%> <input type="hidden"
							name="personId" id="personId" value="<%=person.getPersonId()%>" />
						</td>
					</tr>

					<tr>
						<td><label for="firstName">First Name</label></td>
						<td><input type="text" name="firstName" id="firstName"
							value="<%=person.getFirstName()%>"></td>
					</tr>
					<tr>
						<td><label for="LastName">Last Name</label></td>
						<td><input type="text" name="lastName" id="lastName"
							value="<%=person.getLastName()%>"></td>
					</tr>
					<tr>
						<td><label for="address">Last Name</label></td>
						<td><input type="text" name="address" id="address"
							value="<%=person.getLastName()%>"></td>
					</tr>
					<tr>
						<td><label for="state">Last Name</label></td>
						<td><input type="text" name="state" id="state"
							value="<%=person.getLastName()%>"></td>
					</tr>
					<tr>
						<td><label for="zipcode">Last Name</label></td>
						<td><input type="text" name="zipcode" id="zipcode"
							value="<%=person.getLastName()%>"></td>
					</tr>
					<tr>
						<td><label for="type">Person Type:</label></td>
						<td><select name="type" id="type">
								<%
									String[] types = { "Instructor", "Student" };
											for (int i = 0; i < types.length; i++) {
								%>
								<option value="<%=types[i]%>"
									<%=(types[i].equals(person.getPersonType()
								.trim())) ? "selected" : ""%>><%=types[i]%></option>
								<%
									}
								%>
						</select></td>
					</tr>
					<tr>
						<td><label for="address">Address:</label></td>
						<td><textarea name="address" id="address" cols="45" rows="3"><%=person.getAddress()%></textarea>
						</td>
					</tr>
					<tr>
						<td><label for="zipCpde">Zip Code:</label></td>
						<td><input type="text" name="zipCode" maxlength="5"
							id="zipCode" value="<%=person.getZipCode()%>"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="changePassword" value="true">
							<label for="newPassword">New password: </label></td>
						<td><input type="text" name="newPassword" id="newPassword"
							value=""></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" class="button" name="act" value="Update" /> 
							<input type="submit" class="button" name="act" value="Cancel" />
						</td>
					</tr>
				</table>
			</form>
			<%
			}
			%>
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<%
	}
%>

