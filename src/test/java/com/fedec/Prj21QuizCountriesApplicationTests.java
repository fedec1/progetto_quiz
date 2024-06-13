package com.fedec;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.fedec.services.NazioneService;

import jakarta.transaction.Transactional;

@SpringBootTest
class Prj21QuizCountriesApplicationTests {

	@Autowired
	private NazioneService service;
	
	@Test
	@Transactional
	void contextLoads() {
		
		System.out.println(service.getNazioneById(4).getCapital());
		System.out.println(service.getNazioneByAlpha2Code("IT").getCapital());
		System.out.println(service.getNazioneByAlpha2Code("IT").getBorders());
		System.out.println(service.getNazioneByAlpha3Code("AUS").getBandiera());
		
	}
	

}
