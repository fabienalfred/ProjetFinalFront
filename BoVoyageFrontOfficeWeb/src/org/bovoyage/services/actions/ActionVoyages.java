package org.bovoyage.services.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;
import org.bovoyage.entities.Destination;
import org.bovoyage.entities.DestinationTO;

public class ActionVoyages implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao) {
		List<DestinationTO> destinations;
		destinations = destDao.getAllDestination();
		request.setAttribute("destinations", destinations);
//		System.out.println(destinations.size());
		return "recherche.jsp";
	}
}