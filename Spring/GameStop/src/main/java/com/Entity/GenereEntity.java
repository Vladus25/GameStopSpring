package com.Entity;

import javax.persistence.*;

@Entity
@Table(name = "genere")
public class GenereEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String nome;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public GenereEntity(Integer id, String nome) {
		super();
		this.id = id;
		this.nome = nome;
	}

	public GenereEntity() {
		super();
	}
    
    
}
