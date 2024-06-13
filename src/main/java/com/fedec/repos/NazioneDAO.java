package com.fedec.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fedec.entities.Nazione;

public interface NazioneDAO extends JpaRepository<Nazione, Integer> {
	
	//derived query
	Nazione getNazioneByAlpha2Code(String alpha2Code);
	Nazione getNazioneByAlpha3Code(String alpha3Code);
	
}
