package my.ilya.beer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import my.ilya.beer.model.BeerExpert;

public class BeerAdviceServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String color = request.getParameter("color");
		ServletContext sc = getServletContext();
		RequestDispatcher rd = null;
		rd = sc.getRequestDispatcher("/pages/beeradvice.jsp");

		if (color != null) {
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			BeerExpert beerExpert = new BeerExpert();			
			request.setAttribute("styles", beerExpert.getBrands(color));
			rd = sc.getRequestDispatcher("/pages/result.jsp");

		}

		rd.forward(request, response);

	}

}
