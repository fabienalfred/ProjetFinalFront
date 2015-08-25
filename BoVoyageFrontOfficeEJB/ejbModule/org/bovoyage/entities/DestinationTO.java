package org.bovoyage.entities;

import java.io.Serializable;

public class DestinationTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String region;
	private String description;
	private String image;

	public DestinationTO() {
	}

	public DestinationTO(Destination destination){
		this.id = destination.getId();
		this.region = destination.getRegion();
		this.description = destination.getDescription();
//		this.image = destination.getImage();
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}
