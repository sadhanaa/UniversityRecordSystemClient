package servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.Parameters;
import edu.sjsu.videolibrary.util.UtilsClient;

public class UpdateUserInfo extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public UpdateUserInfo(){
		super();	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(!UtilsClient.validateLogin(request, response)) {
			return;
		}
		try{
			int membershipId = Integer.parseInt(request.getParameter(Parameters.pMembershipId));
			String firstName = request.getParameter(Parameters.pFirstName);
			String lastName = request.getParameter(Parameters.pLastName);
			String address = request.getParameter(Parameters.pAddress);
			String city = request.getParameter(Parameters.pCity);
			String state = request.getParameter(Parameters.pState);
			String zipCode = request.getParameter(Parameters.pZip);
			String membershipType = request.getParameter(Parameters.pMembershipType);
			membershipType = membershipType.trim();
			String creditCardNumber = request.getParameter(Parameters.pCreditCard);
			String userId = request.getParameter(Parameters.pUserId);

			ServiceProxy proxy = UtilsClient.getServiceProxy();
			String result = proxy.updateUserInfo(membershipId, userId, firstName, lastName, address, city, state, zipCode, membershipType, creditCardNumber);

			if(result == null || result.equalsIgnoreCase("false")){
				response.sendRedirect("UpdateUserInfo?msg=serverError");
				return;
			}
			if(result.equalsIgnoreCase("true")){
				response.sendRedirect("UpdateUserInfo?msg=successful");
				return;
			}
			if( result.equalsIgnoreCase("duplicate")) {
				response.sendRedirect("UpdateUserInfo?msg=duplicate");
				return;
			}

		}
		catch(Exception e){
			e.getMessage();
		}		
	}
}






