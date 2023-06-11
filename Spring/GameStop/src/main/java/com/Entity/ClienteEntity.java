package com.Entity;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "cliente")
public class ClienteEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String nome;

    private String cognome;
    
    @Size(max = 16)
    private String cf;

    @ManyToOne
    @JoinColumn(name = "id_tessera")
    private TesseraEntity tessera;

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

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getCf() {
		return cf;
	}

	public void setCf(String cf) {
		this.cf = cf;
	}

	public TesseraEntity getTessera() {
		return tessera;
	}

	public void setTessera(TesseraEntity tessera) {
		this.tessera = tessera;
	}

	public ClienteEntity(Integer id, String nome, String cognome, String cf, TesseraEntity tessera) {
		super();
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.cf = cf;
		this.tessera = tessera;
	}

	public ClienteEntity() {
		super();
	}

   
}

