//Sadhana

package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.Service;
import connection.ServiceService;

public class CreateCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service myService = new ServiceService().getService();

	public CreateCourse() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean done = false;
				
		try {
			String action = request.getParameter("act");						

			if (action.equals("Create")) {	
			    String name = request.getParameter("courseName"); 
			    String section = request.getParameter("courseSection"); 
			    String hours = request.getParameter("courseHours");
			    String loc = request.getParameter("courseLocation"); 
			    
			    done = myService.createCourse(name, section, hours, loc);
			    
 			    System.out.println("done: " + done);		    
			}  
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("CreateCoure.jsp?msg="+ done);
	}
}