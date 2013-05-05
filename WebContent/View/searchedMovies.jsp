<%@page import="utilities.ClientConfig"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Movie"%>
<%@ page import="edu.sjsu.videolibrary.jspHelper.ViewMoviesHelper"%>
<%@ page import="utilities.UtilsClient"%>
 <%
  	if(!UtilsClient.validateLogin(request, response)) {
 		return;
 	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searched Movies</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
	<%
		Movie[] movies = ViewMoviesHelper.getSearchedMovies(request, response);
		int count = 1;
		if (movies != null) {
	%>
	<table border='1' class="data">
		<tr>
			<th class="data">Serial no.</th>
			<th class="data">Movie Name</th>
			<th class="data">Movie Banner</th>
			<th class="data">Release Date</th>
			<th class="data">Available Copies</th>
			<th class="data">Action</th>
		</tr>
		<%
			for (Movie movie : movies) {
					if (movie.getAvailableCopies() != 0) {
		%>
		<tr class="data">
			<td> <% out.print(count++); %> </td>
			<td>
				<%
					out.print(movie.getMovieName());
				%>
			</td>
			<td>
				<%
					out.print(movie.getMovieBanner());
				%>
			</td>
			<td>
				<%
					out.print(movie.getReleaseDate());
				%>
			</td>
			<td>
				<%
					out.print(movie.getAvailableCopies());
				%>
			</td>
			<td>
			<form action="AddToCartServlet" method="post">
					<input type="hidden" name="movieId" value="<%=movie.getMovieId()%>"/>
					<input class="button" type="submit"	value="Add to Cart">
			</form>
			</td>
		</tr>
		
		<%
			}
				}
		%>
	</table>
	<%
		String[] pageLinks = ViewMoviesHelper.getPageLinks(ClientConfig.SEARCHED_MOVIES, request, response);
			if (pageLinks[0] != null) {
				out.print("<a href=\"" + pageLinks[0] + "\"> Prev</a>");
			}
			if (pageLinks[1] != null) {
				out.print("<a href=\"" + pageLinks[1] + "\"> Next</a>");
			}
		} else {
			out.print("No Movies found in Databsae");
		}
	%>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>

</body>
</html>