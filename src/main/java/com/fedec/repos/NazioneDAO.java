package com.fedec.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fedec.entities.Nazione;

@Repository
public interface NazioneDAO extends JpaRepository<Nazione, Integer> {
	
	//derived query
	Nazione getNazioneByAlpha2Code(String alpha2Code);
	Nazione getNazioneByAlpha3Code(String alpha3Code);
	
}
