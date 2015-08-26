package org.bovoyage.services.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;
import org.bovoyage.dao.DossierDao;
import org.bovoyage.entities.DateVoyage;
import org.bovoyage.entities.Destination;
import org.bovoyage.entities.Dossier;
import org.bovoyage.entities.Voyageur;

public class ActionConfirmDate implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao, DossierDao dossierDao) {
		Destination dest = destDao.getDestinationById(Integer.parseInt(request.getParameter("idDest")));
		DateVoyage date = destDao.getDateVoyageById(Integer.parseInt(request.getParameter("idDate")));
		int nbVoyageurs = Integer.parseInt(request.getParameter("nbVoy"));
//		int nbVoyageurs = req
//		List<Voyageur> voyageurs = 
//		request.setAttribute("dest", dest);
//		request.setAttribute("date", date);
		request.setAttribute("nbVoy", nbVoyageurs);
		
		Dossier dossier = new Dossier();
		dossier.setRegion(dest.getRegion());
//		dossier.setVoyageurs(voyageurs);
		dossier.setDateVoyage(date);
		dossier.setPrix(date.getPrix()*nbVoyageurs);
		dossierDao.addDossier(dossier);
		request.setAttribute("dossier", dossier);
		
		
		request.setAttribute("fragment", "confirmation");
		return "index.jsp";
	}

}
