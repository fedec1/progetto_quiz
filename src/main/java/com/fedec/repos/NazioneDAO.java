package com.fedec.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fedec.entities.Nazione;

@Repository
public interface NazioneDAO extends JpaRepository<Nazione, Integer> {
	
	//query derivate
	Nazione getNazioneByAlpha2Code(String alpha2Code);
	Nazione getNazioneByAlpha3Code(String alpha3Code);
	List<Nazione> findByRegion(String region);
	List<Nazione> findByDifficulty(int difficulty);
	
}
