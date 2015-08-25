package org.bovoyage.services.actions;

public class ActionFactory {

	public static Action getAction(String cde) {
		Action action = null;
		if (cde == null || cde.isEmpty())
			cde = "home";
		switch (cde) {
		case "home":
			action = new ActionHome();
			break;
		case "voyages":
			action = new ActionVoyages();
			break;
		case "compte":
			action = new ActionCompte();
			break;
		case "details":
			action = new ActionDetails();
			break;
		case "connexion":
			action = new ActionConnexion();
			break;
		case "commander":
			action = new ActionHome();
			break;
		case "confirm":
			action = new ActionConfirm();
			break;
		default:
			action = new ActionHome();
			break;
		}
		return action;
	}
}
