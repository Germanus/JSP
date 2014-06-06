package my.ilya.beer;

import java.io.IOException;

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
		String doThis = request.getParameter("do_this");
		ServletContext sc = getServletContext();
		RequestDispatcher rd = null;

		if ("go".equals(doThis)) {
			rd = sc.getRequestDispatcher("/pages/beeradvice.jsp");
		}

		if ("choose".equals(doThis)) {
			String color = request.getParameter("color");
			BeerExpert beerExpert = new BeerExpert();
			rd = sc.getRequestDispatcher("/pages/result.jsp");

			request.setAttribute("styles", beerExpert.getBrands(color));
		}
		
		if (rd != null) {
			rd.forward(request, response);
		}

	}

}
