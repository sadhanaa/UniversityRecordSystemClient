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


/**
 * Servlet implementation class HomePage
 */
public class HomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service myService = new ServiceService().getService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html");
//		HttpSession session=request.getSession();
//		Course[] courseArray = null;
//		Course m = new Course();	
//		if(request.getParameter("ViewByCategory")!=null){
//			String category=(String) request.getParameter("category");					
//			movieArray = proxy.listMoviesByCategory(category);				
//		}
//		
//		if(request.getParameter("ViewAll")!=null){
//			movieArray = proxy.listAllMovies();			
//		}
//		
//		if(request.getParameter("search")!=null){
//			String movieName= request.getParameter("movieName");
//			String movieBanner= request.getParameter("movieBanner");
//			String releaseDate= request.getParameter("releaseDate");						
//			movieArray = proxy.searchMovie(movieName, movieBanner, releaseDate);	
//			
//		}
//		session.setAttribute("movieArray",movieArray);
//		response.sendRedirect("ViewMovies.jsp");
	}


	 /* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
