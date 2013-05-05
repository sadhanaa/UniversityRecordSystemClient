//Sadhana

package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.Service;
import connection.ServiceService;
import entity.Admin;

public class SignInAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service myService = new ServiceService().getService();

	public SignInAdmin() {
		super();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, java.io.IOException {


		try {	    
		
			Admin user = new Admin();
			String userId = (request.getParameter("userId"));
			String password = (request.getParameter("password"));
 	
 			if(userId.equals(myService.getAdminUname())
 					&& password.equals(myService.getAdminPass())) {
 				
 				user.setFirstName("Admin");
 				user.setLastName("Admin");
 				user.setAdminId("001");
 				user.setPassword(password);
 				user.setValid(true);
 				
 				HttpSession session = request.getSession(true);	    
				session.setAttribute("currentAdmin", user); 
				response.sendRedirect("Home.jsp"); //logged-in page
				
 			} else {
 				response.sendRedirect("LogIn.jsp"); //error page 
 			}
		} 
		catch (Throwable theException) 	 { System.out.println(theException);  
		}
	}
}
