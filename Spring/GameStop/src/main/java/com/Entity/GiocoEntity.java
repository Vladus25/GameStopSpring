package com.Entity;

import java.math.BigDecimal;
import java.util.Set;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
@Entity
@Table(name = "gioco")
public class GiocoEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String nome;
    
    @Column(columnDefinition = "TEXT")
    private String descrizione;

    private Integer prezzo;
    
    private String img;
    
    @DecimalMin(value = "1", inclusive = true, message = "Il rating deve essere almeno 1")
    @DecimalMax(value = "10", inclusive = true, message = "Il rating non può superare 10")
    private BigDecimal rating;
    
    @Column(name = "anno_rilascio")
    private String annoRilascio;

    @Column(name = "n_giocatori")
    private Integer numeroGiocatori;
    
    @OneToOne
    @JoinColumn(name = "id_casaproduttrice")
    private CasaproduttriceEntity casaProduttrice;
    
    @ManyToMany
    @JoinTable(
        name = "gioco_genere",
        joinColumns = @JoinColumn(name = "id_gioco"),
        inverseJoinColumns = @JoinColumn(name = "id_genere")
    )
    private Set<GenereEntity> genere;
    
    @ManyToMany
    @JoinTable(
        name = "gioco_piattaforma",
        joinColumns = @JoinColumn(name = "id_gioco"),
        inverseJoinColumns = @JoinColumn(name = "id_piattaforma")
    )
    private Set<PiattaformaEntity> piattaforma;
    
    @ManyToMany
    @JoinTable(
        name = "gioco_fornitore",
        joinColumns = @JoinColumn(name = "id_gioco"),
        inverseJoinColumns = @JoinColumn(name = "id_fornitore")
    )
    private Set<FornitoreEntity> fornitore;
    

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

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public Integer getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(Integer prezzo) {
		this.prezzo = prezzo;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getAnnoRilascio() {
		return annoRilascio;
	}

	public void setAnnoRilascio(String annoRilascio) {
		this.annoRilascio = annoRilascio;
	}

	public Integer getNumeroGiocatori() {
		return numeroGiocatori;
	}

	public void setNumeroGiocatori(Integer numeroGiocatori) {
		this.numeroGiocatori = numeroGiocatori;
	}

	public Set<PiattaformaEntity> getPiattaforma() {
		return piattaforma;
	}

	public void setPiattaforma(Set<PiattaformaEntity> piattaforma) {
		this.piattaforma = piattaforma;
	}

	public BigDecimal getRating() {
		return rating;
	}

	public void setRating(BigDecimal rating) {
		this.rating = rating;
	}

	public CasaproduttriceEntity getCasaProduttrice() {
		return casaProduttrice;
	}

	public void setCasaProduttrice(CasaproduttriceEntity casaProduttrice) {
		this.casaProduttrice = casaProduttrice;
	}

	public Set<FornitoreEntity> getFornitore() {
		return fornitore;
	}

	public void setFornitore(Set<FornitoreEntity> fornitore) {
		this.fornitore = fornitore;
	}

	
	public Set<GenereEntity> getGenere() {
		return genere;
	}

	public void setGenere(Set<GenereEntity> genere) {
		this.genere = genere;
	}
	
	
	public GiocoEntity(Integer id, String nome, String descrizione, Integer prezzo, String img,
			@DecimalMin(value = "1", inclusive = true, message = "Il rating deve essere almeno 1") @DecimalMax(value = "10", inclusive = true, message = "Il rating non può superare 10") BigDecimal rating,
			String annoRilascio, Integer numeroGiocatori, CasaproduttriceEntity casaProduttrice,
			Set<GenereEntity> genere, Set<PiattaformaEntity> piattaforma,
			Set<FornitoreEntity> fornitore) {
		super();
		this.id = id;
		this.nome = nome;
		this.descrizione = descrizione;
		this.prezzo = prezzo;
		this.img = img;
		this.rating = rating;
		this.annoRilascio = annoRilascio;
		this.numeroGiocatori = numeroGiocatori;
		this.casaProduttrice = casaProduttrice;
		this.genere = genere;
		this.piattaforma = piattaforma;
		this.fornitore = fornitore;
	}

	public GiocoEntity() {
		super();
	}
	
	
    
}
