package com.Entity;

import java.time.LocalDate;

import javax.persistence.*;

@Entity
@Table(name = "tessera")
public class TesseraEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String tipologia;
    
    private LocalDate dataEmissione;
    
    private LocalDate dataScadenza;

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

	public LocalDate getDataEmissione() {
		return dataEmissione;
	}

	public void setDataEmissione(LocalDate dataEmissione) {
		this.dataEmissione = dataEmissione;
	}

	public LocalDate getDataScadenza() {
		return dataScadenza;
	}

	public void setDataScadenza(LocalDate dataScadenza) {
		this.dataScadenza = dataScadenza;
	}

	public TesseraEntity(Integer id, String tipologia, LocalDate dataEmissione, LocalDate dataScadenza) {
		super();
		this.id = id;
		this.tipologia = tipologia;
		this.dataEmissione = dataEmissione;
		this.dataScadenza = dataScadenza;
	}

	public TesseraEntity() {
		super();
	}
	
	
    
}

