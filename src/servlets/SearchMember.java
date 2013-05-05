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
import entity.Person;

public class SearchMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service myService = new ServiceService().getService();

	public SearchMember() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		
		List<Person> persons = null;
		
		if (request.getParameter("search") != null) {
			String personId = request.getParameter("PersonId");
			String personType = request.getParameter("type");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zipCode = request.getParameter("zipCode");
			if (personId != null) {
				//TODO: here PersonId is the Column name of person id in "person" table
				persons = myService.searchPerson("PersonId", personId);
			} else if (personType != null) {
				persons = myService.searchPerson("PersonType", personId);
			}
			
			session.setAttribute("personsList", persons);
			response.sendRedirect("SearchResults.jsp");

		}
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
