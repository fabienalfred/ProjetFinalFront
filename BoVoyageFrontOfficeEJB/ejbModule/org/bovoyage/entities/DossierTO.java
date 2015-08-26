package org.bovoyage.entities;

import java.io.Serializable;

public class DossierTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int numReservation;
	private String region;
	private Contact contact;
	private DateVoyage dateVoyage;

	public DossierTO() {

	}

	public DossierTO(Dossier d) {
		this.numReservation = d.getNumReservation();
		this.region = d.getRegion();
//		this.contact = d.getContact();
		this.dateVoyage = d.getDateVoyage();
	}

	public int getNumReservation() {
		return numReservation;
	}

	public void setNumReservation(int numReservation) {
		this.numReservation = numReservation;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}

	public DateVoyage getDateVoyage() {
		return dateVoyage;
	}

	public void setDateVoyage(DateVoyage dateVoyage) {
		this.dateVoyage = dateVoyage;
	}

}
