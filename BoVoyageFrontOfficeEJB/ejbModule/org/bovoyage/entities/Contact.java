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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
@NamedQueries({
	@NamedQuery(name="Contact.getAllContact", query="SELECT c FROM Contact c"),
	@NamedQuery(name="Contact.getContactByNom", query="SELECT c FROM Contact c WHERE c.nom LIKE :nom")
})
public class Contact implements Serializable{

	@Id
	@Column(name="kp_contact")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String nom;
	@OneToOne(cascade=CascadeType.ALL)
	private Adresse adressePostale;
	@OneToOne(cascade=CascadeType.ALL)
	private Adresse adresseFacturation;
	@OneToOne(cascade=CascadeType.ALL)
	private Compte compte;
	@OneToMany(cascade=CascadeType.ALL, mappedBy="contact")
	private List<Dossier> dossiers = new ArrayList<>();
	
	public List<Dossier> getDossiers() {
		return dossiers;
	}

	public void setDossiers(List<Dossier> dossiers) {
		this.dossiers = dossiers;
	}

	public Contact() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Adresse getAdressePostale() {
		return adressePostale;
	}

	public void setAdressePostale(Adresse adressePostale) {
		this.adressePostale = adressePostale;
	}

	public Adresse getAdresseFacturation() {
		return adresseFacturation;
	}

	public void setAdresseFacturation(Adresse adresseFacturation) {
		this.adresseFacturation = adresseFacturation;
	}

	public Compte getCompte() {
		return compte;
	}

	public void setCompte(Compte compte) {
		this.compte = compte;
	}

}
