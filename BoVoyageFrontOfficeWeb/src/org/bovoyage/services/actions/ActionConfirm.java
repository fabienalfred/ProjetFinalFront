package org.bovoyage.services.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;
import org.bovoyage.entities.DateVoyage;
import org.bovoyage.entities.Destination;

public class ActionConfirm implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao) {
		Destination dest = destDao.getDestinationById(Integer.parseInt(request.getParameter("idDest")));
		DateVoyage datevoyage = destDao.getDateVoyageById(Integer.parseInt(request.getParameter("idDate")));
		request.setAttribute("dest", dest);
		request.setAttribute("date", datevoyage);
		request.setAttribute("fragment", "reservationsDetails");
		return "index.jsp";
	}

}
