package com.Entity;

import javax.persistence.*;

@Entity
@Table(name = "accessorio")
public class AccessorioEntity {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String tipologia;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTipologia() {
		return tipologia;
	}

	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}

	public AccessorioEntity(Integer id, String tipologia) {
		super();
		this.id = id;
		this.tipologia = tipologia;
	}

	public AccessorioEntity() {
		super();
	}
	
	
    
}

