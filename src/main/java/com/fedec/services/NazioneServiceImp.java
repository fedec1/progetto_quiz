package com.fedec.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fedec.entities.Nazione;
import com.fedec.repos.NazioneDAO;

@Service
public class NazioneServiceImp implements NazioneService {
	
	@Autowired
	private NazioneDAO dao;
	
	@Override
	public List<Nazione> getNazioni() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public Nazione getNazioneById(int id) {
		
		return dao.getReferenceById(id);
	}

	@Override
	public Nazione getNazioneByAlpha2Code(String alpha2Code) {
		// TODO Auto-generated method stub
		return dao.getNazioneByAlpha2Code(alpha2Code);
	}
	
	public Nazione saveNazione(Nazione nazione) {
        return dao.save(nazione);
    }

}
