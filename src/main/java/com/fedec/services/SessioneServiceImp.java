package com.fedec.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fedec.entities.Sessione;
import com.fedec.repos.SessioneDAO;

@Service
public class SessioneServiceImp implements SessioneService {
	
	@Autowired
	private SessioneDAO dao;

	@Override
	public void saveSession(String username, String quizType, int punteggio, int difficulty) {
        Sessione sessione = new Sessione();
        sessione.setUsername(username);
        sessione.setTipoQuiz(quizType);
        sessione.setScore(punteggio);
        sessione.setDifficulty(difficulty);

        System.out.println("Saving session to DB: " + sessione);

        dao.save(sessione);
    }

	

	@Override
	public List<Sessione> findByTypeAndDifficulty(String type, int difficolta) {
		// TODO Auto-generated method stub
		return dao.findByTypeAndDifficultyOrderByScoreDesc(type, difficolta);
	}

	

}
