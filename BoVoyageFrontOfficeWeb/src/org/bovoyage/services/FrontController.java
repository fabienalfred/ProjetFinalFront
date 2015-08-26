package org.bovoyage.services;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;
import org.bovoyage.services.actions.Action;
import org.bovoyage.services.actions.ActionFactory;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private DestinationDao destDao;

	public FrontController() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cde = request.getParameter("cde");
		String page = "index.jsp";
		Action action = ActionFactory.getAction(cde);
		page = action.execute(request, response, destDao);

		RequestDispatcher rd = request.getRequestDispatcher(page);
//		response.setCharacterEncoding("UTF-8");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
