package com.fedec.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fedec.entities.Domanda;
import com.fedec.entities.Sessione;
import com.fedec.services.ClassificaService;
import com.fedec.services.DomandaService;
import com.fedec.services.SessioneService;

@RestController
@RequestMapping("api")
public class QuizController {

    @Autowired
    private DomandaService domandaService;
    
    @Autowired
    private SessioneService sessioneService;
    
    @Autowired
    private ClassificaService classificaService;

     @GetMapping("quizcapitale")
     public List<Domanda> getDomandeCapitali(@RequestParam int difficolta) {
         return domandaService.generaQuizCapitali(15, difficolta);
     }
     
     @GetMapping("quizbandiere")
     public List<Domanda> getDomandeBandiere(@RequestParam int difficolta) {
         return domandaService.generaQuizBandiere(15, difficolta);
     }
     
     @GetMapping("quizconfini")
     public List<Domanda> getDomandeConfini(@RequestParam int difficolta) {
    	 
    	 List<Domanda> domande = null;
         boolean noError = false;
    	 while (!noError) {
             try {
                 domande = domandaService.generaQuizConfini(15, difficolta);;
                 noError = true;
             } catch (Exception e) {
                 System.err.println("Errore durante la generazione delle domande miste: " + e.getMessage());
             }
         }
         return domande;
     }
    
     @GetMapping("miste")
     public List<Domanda> getDomandeMiste(@RequestParam int difficolta) {
         List<Domanda> domande = null;
         boolean noError = false;

         while (!noError) {
             try {
                 domande = domandaService.generaDomandeMiste(15, difficolta);
                 noError = true;
             } catch (Exception e) {
                 System.err.println("Errore durante la generazione delle domande miste: " + e.getMessage());
             }
         }

         return domande;
     }
     
     @GetMapping("mista")
     public Domanda getDomandaMista() {
    	 
    	 boolean noError = false;
    	 Domanda d = null;
    	 while (!noError) {
    		 try {
    			 d = domandaService.generaDomandaMista();
    			 noError = true;
    		 } catch (Exception e) {
                 System.err.println("Errore durante la generazione delle domande miste: " + e.getMessage());
             }
    	 }
    	  return d;
     }
     
     @GetMapping("classifica")
     public List<Sessione> getClassifica(@RequestParam int difficolta, @RequestParam String type){
         return classificaService.generaClassifica(difficolta, type);
     }
     
     @PostMapping("saveSession")
     public ResponseEntity<Void> saveSession(@RequestBody Map<String, Object> sessione) {
         try {
             String username = (String) sessione.get("username");
             String type = (String) sessione.get("type");
             int score = (int) sessione.get("score");
             int difficulty = (int) sessione.get("difficulty");

             // Log per debug
             System.out.println("Sessione:");
             System.out.println("Username: " + username);
             System.out.println("Type: " + type);
             System.out.println("Score: " + score);
             System.out.println("Difficulty: " + difficulty);

             sessioneService.saveSession(username, type, score, difficulty);
             return ResponseEntity.ok().build();
         } catch (Exception e) {
             e.printStackTrace();
             return ResponseEntity.badRequest().build();
         }
     }
    
}


