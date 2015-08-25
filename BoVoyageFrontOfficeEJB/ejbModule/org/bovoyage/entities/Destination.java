package org.bovoyage.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQueries({
		@NamedQuery(name = "Destination.getDestinationByRegion", query = "FROM Destination d WHERE d.region LIKE :region"),
		@NamedQuery(name = "Destination.getAllDestination", query = "FROM Destination") })
public class Destination {

	@Id
	@Column(name = "kp_destination")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String region;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "ke_destination")
	private List<DateVoyage> dateVoyages = new ArrayList<>();
	private String description;
	@ElementCollection
	@CollectionTable(name = "images", joinColumns = @JoinColumn(name = "ke_destination") )
	@Column(name = "image")
	private List<String> images = new ArrayList<>();

	public Destination() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public List<DateVoyage> getDateVoyages() {
		return dateVoyages;
	}

	public void setDateVoyages(List<DateVoyage> dateVoyages) {
		this.dateVoyages = dateVoyages;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String descritpion) {
		this.description = descritpion;
	}

	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public String getImage() {
		if (!images.isEmpty() || images != null)
			return images.get(0);
		else
			return null;
	}
}
