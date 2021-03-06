package org.bovoyage.services.actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.ContactDao;
import org.bovoyage.dao.DestinationDao;
import org.bovoyage.dao.DossierDao;
import org.bovoyage.entities.DateVoyage;
import org.bovoyage.entities.Destination;

public class ActionSelectDate implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao, DossierDao dossierDao, ContactDao contactDao) {
		Destination dest = destDao.getDestinationById(Integer.parseInt(request.getParameter("idDest")));
		DateVoyage datevoyage = destDao.getDateVoyageById(Integer.parseInt(request.getParameter("idDate")));
		request.setAttribute("dest", dest);
		request.setAttribute("date", datevoyage);
		if(request.getParameter("nbVoy") == null || request.getParameter("nbVoy").isEmpty())
			request.setAttribute("nbVoy", 1);
		else {
			int nbVoyageurs = Integer.parseInt(request.getParameter("nbVoy"));
			request.setAttribute("nbVoy", nbVoyageurs);
		}
//		System.out.println("nbVoy"));
		request.setAttribute("fragment", "reservationsDetails");
		return "index.jsp";
	}

}
