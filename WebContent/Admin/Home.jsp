<!-- Sadhana -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Admin" %>
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>

<jsp:include page="includes/header.jsp"></jsp:include>

<div id="wrapper">
<jsp:include page="includes/sidebar.jsp"></jsp:include>

	<div id="rightContent">
	<h3>Welcome</h3>
	<div class="shortcutHome">
	  <a href="CreateCourse.jsp"><img src="../css/img/posting.png"><br>Create a Course</a>
		</div>
		<div class="shortcutHome">
		<a href="ViewCourses.jsp"><img src="../css/img/photo.png"><br>View Courses</a>
		</div>
		<div class="shortcutHome">
		<a href="SearchCourse.jsp"><img src="../css/img/halaman.png"><br>Search a Course</a>
		</div>
		<div class="shortcutHome">
		<a href="ViewPerson.jsp "><img src="../css/img/template.png"><br>View Person</a>
		</div>
		<div class="shortcutHome">
		<a href="SignUpAdmin.jsp"><img src="../css/img/quote.png"><br>Create a New Admin</a>
		</div>
		 
		<div class="shortcutHome">
		<a href="SearchPerson.jsp"><img src="../css/img/bukutamu.png"><br>Search Person</a>
		</div>
	
		
		<div class="clear"></div>
		
	</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>

</html>
<% } %>