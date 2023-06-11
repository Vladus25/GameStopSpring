package com.Entity;

import javax.persistence.*;

@Entity
@Table(name = "sede")
public class SedeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String indirizzo;

    private String citta;

    @ManyToOne
    @JoinColumn(name = "id_casaproduttrice")
    private CasaproduttriceEntity casaProduttrice;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public CasaproduttriceEntity getCasaProduttrice() {
		return casaProduttrice;
	}

	public void setCasaProduttrice(CasaproduttriceEntity casaProduttrice) {
		this.casaProduttrice = casaProduttrice;
	}

	public SedeEntity(Integer id, String indirizzo, String citta, CasaproduttriceEntity casaProduttrice) {
		super();
		this.id = id;
		this.indirizzo = indirizzo;
		this.citta = citta;
		this.casaProduttrice = casaProduttrice;
	}

	public SedeEntity() {
		super();
	}
    
    

    
}

