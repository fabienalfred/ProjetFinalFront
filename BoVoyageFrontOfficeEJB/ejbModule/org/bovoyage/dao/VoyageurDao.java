package org.bovoyage.dao;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.bovoyage.entities.Voyageur;

@Singleton
public class VoyageurDao {

	@PersistenceContext(unitName = "dbbovoyage")
	private EntityManager em;

	public void create(Voyageur voyageur) {
		em.persist(voyageur);
	}

	public void delete(int id) {
		Voyageur voyageur = em.find(Voyageur.class, id);
		em.remove(voyageur);
	}

	public void update(Voyageur voyageur) {
		em.merge(voyageur);
	}

	public Voyageur getVoyageurById(int id) {
		return em.find(Voyageur.class, id);
	}
}
