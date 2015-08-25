package org.bovoyage.services.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;
import org.bovoyage.entities.Destination;

public class ActionDetails implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao) {
		String id = request.getParameter("idVoyage");
		Destination dest = destDao.getDestinationById(Integer.parseInt(id));
		// rajouter anti lazy
		request.setAttribute("voyage", dest);
		return "detail.jsp";
	}
}