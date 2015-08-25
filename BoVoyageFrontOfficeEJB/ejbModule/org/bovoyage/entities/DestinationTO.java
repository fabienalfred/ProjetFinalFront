package org.bovoyage.entities;

public class DestinationTO {
	private int id;
	private String region;
	private String descritpion;
	private String image;

	public DestinationTO() {
	}

	public DestinationTO(Destination destination){
		this.id = destination.getId();
		this.region = destination.getRegion();
		this.descritpion = destination.getDescritpion();
		this.image = destination.getImage();
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

	public String getDescritpion() {
		return descritpion;
	}

	public void setDescritpion(String descritpion) {
		this.descritpion = descritpion;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}
