package com.fedec.entities;

import java.util.List;


import accessori.Convertitore;
import jakarta.persistence.Column;
import jakarta.persistence.Convert;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "nazioni")
public class Nazione {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "name", nullable = false, length = 89)
	private String name;
	
	@Column(name = "capital", nullable = false, length = 89)
    private String capital;
	
	@Column(name = "flag", length = 255)
    private String bandiera;
	
	@Column(name = "alpha2Code", nullable = false, length = 2)
    private String alpha2Code;
	
	@Column(name = "alpha3Code", nullable = false, length = 2)
    private String alpha3Code;
	
	@Column(name = "borders", columnDefinition = "TEXT")
    @Convert(converter = Convertitore.class) //richiama la classe Convertitore
    private List<String> borders;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCapital() {
		return capital;
	}

	public void setCapital(String capital) {
		this.capital = capital;
	}

	public String getBandiera() {
		return bandiera;
	}

	public void setBandiera(String bandiera) {
		this.bandiera = bandiera;
	}

	public List<String> getBorders() {
		return borders;
	}
	
	public String getAlpha2Code() {
        return alpha2Code;
    }

    public void setAlpha2Code(String alpha2Code) {
        this.alpha2Code = alpha2Code;
    }
    
  
	public String getAlpha3Code() {
		return alpha3Code;
	}

	public void setAlpha3Code(String alpha3Code) {
		this.alpha3Code = alpha3Code;
	}

	
	
}
