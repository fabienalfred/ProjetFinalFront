package org.bovoyage.services.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.ContactDao;
import org.bovoyage.dao.DestinationDao;
import org.bovoyage.dao.DossierDao;
import org.bovoyage.entities.Destination;
import org.bovoyage.entities.DestinationTO;

public class ActionHome implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao, DossierDao dossierDao, ContactDao contactDao) {
		
		List<DestinationTO> destinations = destDao.getAllDestination();
		request.setAttribute("destinations", destinations);
		request.setAttribute("fragment", "fichesAccueil");
		return "index.jsp";
	}
}