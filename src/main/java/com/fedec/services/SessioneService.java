package com.fedec.services;

import java.util.List;

import com.fedec.entities.Sessione;

public interface SessioneService {

	public void saveSession(String username, String quizType, int punteggio, int difficulty);
	List<Sessione> findByDifficulty(int difficulty);
	List<Sessione> findByType(String type);
	
}
