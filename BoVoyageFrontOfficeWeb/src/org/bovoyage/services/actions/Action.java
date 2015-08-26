package org.bovoyage.services.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;
import org.bovoyage.dao.DossierDao;

public interface Action {

	String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao, DossierDao dossierDao);
	
}
