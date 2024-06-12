package com.fedec.services;

import java.util.List;

import com.fedec.entities.Nazione;

public interface NazioneService {
	
	List<Nazione> getNazioni();
	Nazione getNazioneById(int id);
	Nazione getNazioneByAlpha2Code(String alpha2Code);

}
