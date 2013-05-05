//Sadhana


package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.ClientConfig;
import connection.ServiceService;
import entity.Person;

/**
 * Servlet implementation class SignInUser
 */

public class SignInUser extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		
	    String uid = request.getParameter("userId");
		String pwd = request.getParameter("password");
		try
		{
			Person p = new ServiceService().getService().personDetail(Long.parseLong(uid));
			if(p != null 
					&& p.getPersonId() == Long.parseLong(uid)
					&& p.getPassword().equals(pwd))
			{
				session.setAttribute("currenrUser", p);
				response.sendRedirect(ClientConfig.USER_HOME);
			} else
			{
				session.setAttribute("loginError","Incorrect Person Id or Password");
				//FIXME: check this if 404 error is returned
				response.sendRedirect("SignInUser.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			session.setAttribute("loginError","Server Error Occured");
			response.sendRedirect(ClientConfig.USER_LOGIN);
		}
	}

}
