//Sadhana


package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.Service;
import connection.ServiceService;
import entity.Course;

public class EditCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service myService = new ServiceService().getService();
	private String msg = "";
	private boolean error = false;

	public EditCourse() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String id = request.getParameter("id");
			String action = request.getParameter("act");

			HttpSession session = request.getSession();

			if (action.equals("Edit")) {
				editCourse(session, request, response, id);
			} else if (action.equals("Update")) {
				updateCourse(session, request, response, id);
			} else if (action.equals("Delete")) {
				deleteCourse(session, request, response, id);
			} else {
				response.sendRedirect("ViewCourses.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void editCourse(HttpSession session, HttpServletRequest request,
			HttpServletResponse response, String id) throws Exception {
		Course course = myService.courseDetail(Long.parseLong(id));

		if (course != null) {
			session.setAttribute("currentCourse", course);
			response.sendRedirect("EditCourse.jsp");
		} else {
			error = true;
			msg = "Invalid information";
		}
	}

	public void updateCourse(HttpSession session, HttpServletRequest request,
			HttpServletResponse response, String id) throws Exception {
		boolean msg = false;
		try {
			long courseId = Integer.parseInt(request.getParameter("CourseId"));
			String name = request.getParameter("CourseName");
			String section = request.getParameter("section");
			String hours = request.getParameter("hours");
			String loc = request.getParameter("location");

			msg = myService.updateCourse(courseId, name, section, hours, loc);
		} catch (Exception e) {
			msg = false;

		}
		response.sendRedirect("EditCourse.jsp?msg=" + msg);
	}

	public void deleteCourse(HttpSession session, HttpServletRequest request,
			HttpServletResponse response, String id) throws Exception {
		boolean done = myService.deleteCourse(Long.parseLong(id));
		if (done) {
			msg = "true deleted";
		} else {
			msg = "error deleted";
		}
		response.sendRedirect("ViewCourses.jsp?msg=" + msg);
	}

}