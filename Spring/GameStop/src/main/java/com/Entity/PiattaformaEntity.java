package com.Entity;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "piattaforma")
public class PiattaformaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    private String tipo;
    
    @Column(name = "n_giocatori")
    private Integer numeroGiocatori;

    @ManyToMany
    @JoinTable(
        name = "piattaforma_accessorio",
        inverseJoinColumns = @JoinColumn(name = "id_accessorio")
    )
    private Set<AccessorioEntity> accessori;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Integer getNumeroGiocatori() {
		return numeroGiocatori;
	}

	public void setNumeroGiocatori(Integer numeroGiocatori) {
		this.numeroGiocatori = numeroGiocatori;
	}

	public Set<AccessorioEntity> getAccessori() {
		return accessori;
	}

	public void setAccessori(Set<AccessorioEntity> accessori) {
		this.accessori = accessori;
	}

	public PiattaformaEntity(Integer id, String tipo, Integer numeroGiocatori, Set<AccessorioEntity> accessori) {
		super();
		this.id = id;
		this.tipo = tipo;
		this.numeroGiocatori = numeroGiocatori;
		this.accessori = accessori;
	}

	public PiattaformaEntity() {
		super();
	}
	
	
    
}

