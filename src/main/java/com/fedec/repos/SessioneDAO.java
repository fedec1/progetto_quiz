package com.fedec.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fedec.entities.Sessione;

public interface SessioneDAO extends JpaRepository<Sessione, Integer> {
	
	List<Sessione> findByTypeAndDifficultyOrderByScoreDesc(String type, int difficolta);

}
