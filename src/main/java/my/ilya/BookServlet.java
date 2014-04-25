package my.ilya;

import javax.servlet.http.*;
import javax.servlet.ServletException;
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
		
		String name = null;
		name = "Hello " + request.getParameter("book");
		if(request.getParameter("book").toString().equals("")){
			name = "Hello book";
		}		
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(name);		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
		ServletException, IOException {
		
	}
}
