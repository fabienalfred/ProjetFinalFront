package org.bovoyage.services.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bovoyage.dao.ContactDao;
import org.bovoyage.dao.DestinationDao;
import org.bovoyage.dao.DossierDao;
import org.bovoyage.entities.Adresse;
import org.bovoyage.entities.Compte;
import org.bovoyage.entities.Contact;
import org.bovoyage.entities.DateVoyage;
import org.bovoyage.entities.Destination;
import org.bovoyage.entities.Dossier;
import org.bovoyage.entities.Voyageur;

public class ActionConfirmDate implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response, DestinationDao destDao, DossierDao dossierDao, ContactDao contactDao) {
		Destination dest = destDao.getDestinationById(Integer.parseInt(request.getParameter("idDest")));
		DateVoyage date = destDao.getDateVoyageById(Integer.parseInt(request.getParameter("idDate")));
		
		Contact contact = new Contact();
		String name = request.getParameter("name");
		contact.setNom(name);
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Compte compte =new Compte();
		compte.setEmail(email);
		compte.setPassword(password);
		
		contact.setCompte(compte);
		
		Adresse adresseDom = new Adresse();
		String rue = request.getParameter("street");
		String ville = request.getParameter("city");
		String cp = request.getParameter("postalCode");
		String pays = request.getParameter("country");
		adresseDom.setRue(rue);
		adresseDom.setCodePostal(cp);
		adresseDom.setVille(ville);
		adresseDom.setPays(pays);
		contact.setAdressePostale(adresseDom);
		
		Adresse adresseFact = new Adresse();
		String rueFact = request.getParameter("streetFact");
		String villeFact = request.getParameter("cityFact");
		String cpFact = request.getParameter("postalCodeFact");
		String paysFact = request.getParameter("countryFact");
		adresseDom.setRue(rueFact);
		adresseDom.setCodePostal(cpFact);
		adresseDom.setVille(villeFact);
		adresseDom.setPays(paysFact);
		contact.setAdressePostale(adresseFact);
//		contactDao.create(contact);
		
		
		
		
		
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
		dossier.setContact(contact);
		dossierDao.addDossier(dossier);
		request.setAttribute("dossier", dossier);
		
		
		request.setAttribute("fragment", "confirmation");
		return "index.jsp";
	}

}
