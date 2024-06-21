package com.fedec.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fedec.entities.Sessione;
import com.fedec.repos.SessioneDAO;

@Service
public class ClassificaService {
	
	@Autowired
	private SessioneDAO dao;
	
	public List<Sessione> GeneraClassifica(int difficolta, String type){
		
		return dao.findByTypeAndDifficultyOrderByScoreDesc(type, difficolta);
		
	}

}
