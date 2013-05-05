//Sadhana


package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.Service;
import connection.ServiceService;
import entity.Instructor;
import entity.Person;
//import javax.servlet.annotation.WebServlet;

//@WebServlet("/Admin/EditMember")
public class EditPerson extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service myService = new ServiceService().getService();

	private String msg = "";
	private boolean error = false;

	public EditPerson() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		try {
			String id = request.getParameter("id");
			String action = request.getParameter("act");
			String type = request.getParameter("type");

			HttpSession session = request.getSession();

			if (action.equals("Edit")) {
				editUser(session, request, response, id, type);
			} else if (action.equals("Update")) {
				updateUser(session, request, response, id, type);
			} else if (action.equals("Delete")) {
				deleteUser(session, request, response, id, type);
			}

		} catch (Exception e) {
			msg = "error";
		}
	}

	public void editUser(HttpSession session, HttpServletRequest request,
			HttpServletResponse response, String id, String type)
			throws Exception {

		if ("Instructor".equals(type)) {
			// FIXME: get instructor details here.
			// Instructor instructor = myService.instructorDetail(Long.parseLong(id));
			// session.setAttribute("currentInstructor", instructor);
		} else {
			Person person = myService.personDetail(Long.parseLong(id));
			session.setAttribute("currentPerson", person);
		}
		response.sendRedirect("EditPerson.jsp?type=" + type);
	}

	public void updateUser(HttpSession session, HttpServletRequest request,
			HttpServletResponse response, String id, String type)
			throws Exception {

		String userId = request.getParameter("userId").trim().toLowerCase(); // Validate
																				// Email
		long personId = Integer.parseInt(request.getParameter("membershipId"));
		String fname = request.getParameter("firstName");
		String lname = request.getParameter("lastName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode = request.getParameter("zipcode");
		String pass = request.getParameter("password");
		String persontype = request.getParameter("persontype");
		String department = request.getParameter("department");
		String officeHr = request.getParameter("hours");
		String location = request.getParameter("location");

		boolean changePassword = Boolean.parseBoolean(request
				.getParameter("changePassword"));
		String newPassword = request.getParameter("newPassword");

		boolean done = myService.updatePerson(personId, pass, fname, lname,
				address, city, state, zipcode, persontype, department,
				officeHr, location);

		if (!done) {
			msg = "Error with database connection";
			error = true;
		} else {
			msg = "Person updated";
		}

		// System.out.println(changePassword + " " + newPassword.length() + " "
		// + error);
		// if (changePassword == true && error != true) {
		// if (newPassword.length() >= 6)
		// updateUserPassword(membershipId, newPassword);
		// else
		// msg = "Error: Please input a longer password";
		// } else {
		// msg = "Account updated";
		// }
		response.sendRedirect("ViewPerson.jsp?type=All&msg=" + msg);

	}

	// public void updateUserPassword(int membershipId, String newPassword)
	// throws RemoteException {
	// String updatePassword = proxy.updateUserPassword(membershipId,
	// newPassword);
	// if (updatePassword.equals("true")) {
	// msg = "Account and Password updated";
	// } else {
	// msg = "Invalid new password";
	// error = true;
	// }
	// }

	public void deleteUser(HttpSession session, HttpServletRequest request,
			HttpServletResponse response, String id, String type)
			throws Exception {
		boolean done = false;
		if ("Instructor".equals(type)) {
			done = myService.deleteInstructor(Long.parseLong(id));
		} else {
			done = myService.deleteStudent(Long.parseLong(id));
		}
		response.sendRedirect("ViewPerson.jsp?type=" + type + "&msg=" + done);
	}
}
