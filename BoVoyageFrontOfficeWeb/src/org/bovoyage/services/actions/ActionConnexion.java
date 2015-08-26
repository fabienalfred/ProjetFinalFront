package org.bovoyage.services.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;
import org.bovoyage.dao.DossierDao;

public class ActionConnexion implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao, DossierDao dossierDao) {
		request.setAttribute("fragment", "formulaireConnexion");
		return "index.jsp";
	}
}
