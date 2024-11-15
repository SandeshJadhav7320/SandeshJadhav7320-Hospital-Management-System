package com.entity;

public class SpecialistEntity 
{
	private int id;
	private String specname;
	public SpecialistEntity(int id, String specname) {
		super();
		this.id = id;
		this.specname = specname;
	}
	public SpecialistEntity() {
		super();
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpecname() {
		return specname;
	}
	public void setSpecname(String specname) {
		this.specname = specname;
	}
	
	
}
