package my.ilya;

import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import java.util.ArrayList;
import java.util.List;
import java.io.IOException;


public class BookServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private String quantity = "5";
	private List<String> books = new ArrayList<String>();
	
	public BookServlet(){
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
		ServletException, IOException {
		HttpSession session = request.getSession(true);
		BookShop bookShop = (BookShop)session.getAttribute("bookShop");
		
		String book = request.getParameter("book");			
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		
		if(!book.equals("")){
			bookShop.getAddedBooks().add(book);
		}			
		session.setAttribute("bookShop", bookShop); 
		ServletContext sc = getServletContext();
		RequestDispatcher rd = sc.getRequestDispatcher("/books-table.jsp");
		rd.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
		ServletException, IOException {
		
	}
}
