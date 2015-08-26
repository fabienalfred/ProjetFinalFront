package org.bovoyage.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQueries({
	@NamedQuery(name="Dossier.getAllDossiers",
				query="FROM Dossier"),
	@NamedQuery(name="Dossier.getDossiersByRegion",
				query="SELECT d FROM Dossier d WHERE d.region = :region")
})
public class Dossier implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="kp_dossier")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int numReservation;
	private String region;
	@ManyToOne
	@JoinColumn(name="ke_dateVoyage")
	private DateVoyage dateVoyage;
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="ke_dossier")
	private List<Voyageur> voyageurs = new ArrayList<>();
//	private Contact contact;
	private double prix;


	public Dossier() {

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

	public DateVoyage getDateVoyage() {
		return dateVoyage;
	}

	public void setDateVoyage(DateVoyage dateVoyage) {
		this.dateVoyage = dateVoyage;
	}

	public List<Voyageur> getVoyageurs() {
		return voyageurs;
	}

	public void setVoyageurs(List<Voyageur> voyageurs) {
		this.voyageurs = voyageurs;
	}

//	public Contact getContact() {
//		return contact;
//	}
//
//	public void setContact(Contact contact) {
//		this.contact = contact;
//	}

	public double getPrix() {
		return this.prix;
	}
	
	public void setPrix(double prix) {
		this.prix = prix;
	}

}
