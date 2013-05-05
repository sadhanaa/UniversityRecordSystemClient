<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Admin" %>
<%@ page import="entity.Course" %>
 <%@ page import="connection.Service"%>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> 
<%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Course</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js"></script>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>

<div id="wrapper">
<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
	
		<% 
			String msg = request.getParameter("msg");
			if (msg != null) {
				if (msg.equals("error")) {
						out.print("<div class=\"gagal\">Course can not be added</div>");
				} else if (msg.indexOf("true") >= 0) { 
					out.print("<div class=\"sukses\">Course has been added</div>");
				} else if (msg.indexOf("false") >= 0 || msg.equals("")) { 
					out.print("<div class=\"gagal\">Please verify your information</div>");
				}  
			}
		%>
	
		<h3>Create a New Course</h3>
		<p></p>
		<form method="post" id="CreateCourseForm" action="CreateCourse" onsubmit="return validateCreateCourse(); " >
		  <table width="95%">
 			
 			<tr>
 				 <td width="125px"><b>Course Name: </b></td>
 				 <td><input type="text" name="courseName" id="courseName" value=""></td>
 			</tr>		    
 			<tr>
 				 <td width="125px"><b>Section: </b></td>
 				 <td><input type="text" name="courseSection" id="courseSection" value="0"></td>
 			</tr>
 			<tr>
 				 <td width="125px"><b>Location: </b></td>
 				 <td><input type="text" name="coursehours" id="coursehours" value="0"></td>
 			</tr>		
  			<tr>
 				 <td width="125px"><b>Location: </b></td>
 				 <td><input type="text" name="courselocation" id="courselocation" value="0"></td>
 			</tr>		
  			<tr>
  				<td></td>
  				<td><input type="submit" class="button" name="act" value="Create"  />
  				<input type="reset" class="button" name="act" value="Clear"  /></td>
  			</tr>
		   </table>   
		</form>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>
<% } %> 