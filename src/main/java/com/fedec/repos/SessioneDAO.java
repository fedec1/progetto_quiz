package com.fedec.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fedec.entities.Sessione;

public interface SessioneDAO extends JpaRepository<Sessione, Integer> {

}
