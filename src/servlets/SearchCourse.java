//Sadhana



package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.Service;
import connection.ServiceService;
import entity.Course;

public class SearchCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service myService = new ServiceService().getService();

	public SearchCourse() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		
		if (request.getParameter("search") != null) {
			String courseId = request.getParameter("courseId");
			String courseName = request.getParameter("courseName");
			String courseLocation = request.getParameter("courseLocation");
			String courseHours = request.getParameter("courseHours");
			
			List<Course> courses = null;
			if(courseId != null) {
				//TODO: change this to column name if required
				courses = myService.searchCourse("CourseId", courseId);
			} else if(courseName != null) {
				courses = myService.searchCourse("CourseName", courseName);
			} else if(courseLocation != null) {
				courses = myService.searchCourse("CourseLocation", courseLocation);
			} else if(courseHours != null) {
				courses = myService.searchCourse("CourseHours", courseHours);
			}
			
			session.setAttribute("coursesList", courses);
			response.sendRedirect("SearchCourseResults.jsp");

		}
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("this is called");
	}

}