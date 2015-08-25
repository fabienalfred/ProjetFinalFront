package org.bovoyage.dao;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.bovoyage.entities.Destination;
import org.bovoyage.entities.DestinationTO;

@Singleton
public class DestinationDao {

	@PersistenceContext(unitName = "dbbovoyage")
	private EntityManager em;

	public Destination getDestinationById(int id) {
		return em.find(Destination.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<DestinationTO> getAllDestination() {
		List<Destination> dests = em.createNamedQuery("Destination.getAllDestination").getResultList();
		System.out.println(dests.size());
		List<DestinationTO> destinations = new ArrayList<>();
		for (Destination d : dests) {
			destinations.add(new DestinationTO(d));
			// destinations.add(null);
		}
		return destinations;
	}

	@SuppressWarnings("unchecked")
	public List<DestinationTO> getDestinationByRegion(String region) {
		List<Destination> dests = em.createNamedQuery("Destination.getDestinationByRegion")
				.setParameter("region", region).getResultList();
		List<DestinationTO> destinations = new ArrayList<>();
		for (Destination d : dests) {
			destinations.add(new DestinationTO(d));
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
}
