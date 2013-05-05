//Sadhana

package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.Service;
import connection.ServiceService;

public class ViewCourses extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service myService = new ServiceService().getService();
	private PrintWriter out;

	public ViewCourses() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
//		List<Course> courses = myService.viewAllCourse();
//
//		if (courses != null && courses.size() > 0) {
//
//			for (int i = 0; i < courses.size(); i++) {
//				Course m = courses.get(i);
//				out.print("<tr><td>" + m.getCourseId() + "</td><td>"
//						+ m.getName() + "</td><td>" + m.getLocation()
//						+ "</td><td>" + m.getCourseTeachers() + "</td><td>"
//						+ m.getHours());
//				out.print("<td><form name=\"movieForm" + i
//						+ "\" method=\"post\" action=\"EditCourse\">");
//				out.print("<input type=\"hidden\" name=\"id\" value="
//						+ m.getCourseId() + ">");
//				out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
//				out.print("</form></td></tr>");
//			}
//
//		} else {
//			out.print("No members <a href=\"ViewCategories.jsp\">Try another</a>");
//
//		}
//		out.close();
	}
}
