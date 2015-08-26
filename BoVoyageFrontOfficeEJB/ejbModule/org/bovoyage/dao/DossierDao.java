package org.bovoyage.dao;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.bovoyage.entities.Dossier;
import org.bovoyage.entities.DossierTO;

@Singleton
public class DossierDao {

	@PersistenceContext(unitName = "dbbovoyage")
	private EntityManager em;
	
	public Dossier addDossier(Dossier dossier) {
		em.persist(dossier);
		return dossier;
	}
	
	public void deleteDossier(int id) {
		Dossier dossier = em.find(Dossier.class, id);
		em.remove(dossier);
	}
	
	public void updateDossier(Dossier dossier) {
		em.merge(dossier);
	}
	
	@SuppressWarnings("unchecked")
	public List<DossierTO> getAllDossiers() {
		List<Dossier> dossiers= em.createNamedQuery("Dossier.getAllDossiers").getResultList();
		List<DossierTO> dossiersTO = new ArrayList<>();
		for(Dossier d : dossiers) {
			dossiersTO.add(new DossierTO(d));
		}
		return dossiersTO;
	}
	
}
