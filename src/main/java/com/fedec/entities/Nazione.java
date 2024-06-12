package com.fedec.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "countriesv2")
public class Nazione {
	
	@Id
	private int id;
}
