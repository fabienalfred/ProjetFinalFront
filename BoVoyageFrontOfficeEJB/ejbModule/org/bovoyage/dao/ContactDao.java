package org.bovoyage.dao;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.bovoyage.entities.Contact;

@Singleton
public class ContactDao {

	@PersistenceContext(unitName = "dbbovoyage")
	private EntityManager em;

	public void create(Contact contact) {
		em.persist(contact);
	}

	public void delete(int id) {
		Contact contact = em.find(Contact.class, id);
		em.remove(contact);
	}

	public void update(Contact contact) {
		em.merge(contact);
	}

	public Contact getContactById(int id) {
		return em.find(Contact.class, id);
	}
}
