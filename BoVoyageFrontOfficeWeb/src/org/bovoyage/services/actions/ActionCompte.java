package org.bovoyage.services.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.DestinationDao;

public class ActionCompte implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao) {
		return "compte.jsp";
	}
}
