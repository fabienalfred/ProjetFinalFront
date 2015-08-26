package org.bovoyage.services.actions;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;
import org.bovoyage.entities.DateVoyage;
import org.bovoyage.entities.Destination;

public class ActionDetails implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao) {
		String id = request.getParameter("idVoyage");
		Destination dest = destDao.getDestinationById(Integer.parseInt(id));
		dest.setDateVoyages(destDao.getDateVoyage(dest));
		dest.setImages(destDao.getImages(dest));
		request.setAttribute("destination", dest);
		request.setAttribute("fragment", "detailsDate");
		return "index.jsp";
	}
}