package com.Entity;

import java.time.LocalDate;

import javax.persistence.*;

@Entity
@Table(name = "casaproduttrice")
public class CasaproduttriceEntity {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String nome;

    @Column(name = "anno_fondazione")
    private LocalDate annoFondazione;

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

	public LocalDate getAnnoFondazione() {
		return annoFondazione;
	}

	public void setAnnoFondazione(LocalDate annoFondazione) {
		this.annoFondazione = annoFondazione;
	}

	public CasaproduttriceEntity(Integer id, String nome, LocalDate annoFondazione) {
		super();
		this.id = id;
		this.nome = nome;
		this.annoFondazione = annoFondazione;
	}

	public CasaproduttriceEntity() {
		super();
	}
	
	
    
}
