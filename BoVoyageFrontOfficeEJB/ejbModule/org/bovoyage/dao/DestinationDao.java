package org.bovoyage.dao;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.bovoyage.entities.DateVoyage;
import org.bovoyage.entities.Destination;
import org.bovoyage.entities.DestinationTO;

@Singleton
public class DestinationDao {

	@PersistenceContext(unitName = "dbbovoyage")
	private EntityManager em;

	public Destination getDestinationById(int id) {
		return em.find(Destination.class, id);
	}

	public List<DateVoyage> getDateVoyage(Destination destination) {
		Destination d = em.find(Destination.class, destination.getId());
		List<DateVoyage> dateVoyages = new ArrayList<>();
		dateVoyages.addAll(d.getDateVoyages());
		return dateVoyages;
	}

	public List<String> getImages(Destination destination) {
		Destination d = em.find(Destination.class, destination.getId());
		List<String> images = new ArrayList<>();
		images.addAll(d.getImages());
		return images;
	}

	@SuppressWarnings("unchecked")
	public List<DestinationTO> getAllDestination() {
		List<Destination> dests = em.createNamedQuery("Destination.getAllDestination").getResultList();
		List<DestinationTO> destinations = new ArrayList<>();
		for (Destination d : dests) {
			DestinationTO dTO = new DestinationTO(d);
			dTO.setImage(getImages(d).get(0));
			destinations.add(dTO);
		}
		return destinations;
	}

	@SuppressWarnings("unchecked")
	public List<DestinationTO> getDestinationByRegion(String region) {
		List<Destination> dests = em.createNamedQuery("Destination.getDestinationByRegion")
				.setParameter("region", "%"+region+"%").getResultList();
		List<DestinationTO> destinations = new ArrayList<>();
		for (Destination d : dests) {
			DestinationTO dTO = new DestinationTO(d);
			dTO.setImage(getImages(d).get(0));
			destinations.add(dTO);
		}
		return destinations;
	}

	public Destination addDestination(Destination destination) {
		em.persist(destination);
		return destination;
	}

	public void delete(int id) {
		Destination d = em.find(Destination.class, id);
		em.remove(d);
	}

	public void update(Destination destination) {
		em.merge(destination);
	}

	public Destination getDestinationByTO(DestinationTO destinationTO) {
		Destination destination = new Destination();
		destination = getDestinationById(destinationTO.getId());
		return destination;
	}
	
	public DateVoyage getDateVoyageById(int id) {
		return em.find(DateVoyage.class, id);
	}
}
