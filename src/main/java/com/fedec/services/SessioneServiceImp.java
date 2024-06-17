package com.fedec.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fedec.entities.Sessione;
import com.fedec.repos.SessioneDAO;

@Service
public class SessioneServiceImp implements SessioneService {
	
	@Autowired
	private SessioneDAO dao;

	@Override
	public void saveSession(String username, String quizType, int punteggio) {
        Sessione sessione = new Sessione();
        sessione.setUsername(username);
        sessione.setTipoQuiz(quizType);
        sessione.setScore(punteggio);

        System.out.println("Saving session to DB: " + sessione); // Log della sessione salvata

        dao.save(sessione);
    }

}
