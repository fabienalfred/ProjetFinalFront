package org.bovoyage.services.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActionCompte implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "compte.jsp";
	}
}
