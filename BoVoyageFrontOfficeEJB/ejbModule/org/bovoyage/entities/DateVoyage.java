package org.bovoyage.entities;

import java.util.Date;
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
import javax.persistence.OneToMany;

@Entity
public class DateVoyage implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="kp_datevoyage")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private Date dateDepart;
	private Date dateRetour;
	private double prix;
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="ke_datevoyage")
	private List<Dossier> dossiers = new ArrayList<>();

	public DateVoyage() {

	}

	
	
	public DateVoyage(Date dateDepart, Date dateRetour, double prix) {
		this.dateDepart = dateDepart;
		this.dateRetour = dateRetour;
		this.prix = prix;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDateDepart() {
		return dateDepart;
	}

	public void setDateDepart(Date dateDepart) {
		this.dateDepart = dateDepart;
	}

	public Date getDateRetour() {
		return dateRetour;
	}

	public void setDateRetour(Date dateRetour) {
		this.dateRetour = dateRetour;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	public List<Dossier> getDossiers() {
		return dossiers;
	}

	public void setDossiers(List<Dossier> dossiers) {
		this.dossiers = dossiers;
	}

}
