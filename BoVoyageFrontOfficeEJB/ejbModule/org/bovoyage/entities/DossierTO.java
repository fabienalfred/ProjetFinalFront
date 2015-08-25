package org.bovoyage.entities;

public class DossierTO {
	private int numReservation;
	private Contact contact;
	private DateVoyage dateVoyage;

	public DossierTO() {

	}

	public int getNumReservation() {
		return numReservation;
	}

	public void setNumReservation(int numReservation) {
		this.numReservation = numReservation;
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
