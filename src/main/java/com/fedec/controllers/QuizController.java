package com.fedec.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fedec.entities.Domanda;
import com.fedec.services.DomandaService;
import com.fedec.services.SessioneService;

@RestController
@RequestMapping("api")
public class QuizController {

    @Autowired
    private DomandaService domandaService;
    
    @Autowired
    private SessioneService sessioneService;

     @GetMapping("quizcapitale")
     public List<Domanda> getDomandeCapitali() {
         return domandaService.generaQuizCapitali(15);
     }
     
     @GetMapping("quizbandiere")
     public List<Domanda> getDomandeBandiere() {
         return domandaService.generaQuizBandiere(15);
     }
     
     @GetMapping("quizconfini")
     public List<Domanda> getDomandeConfini() {
         return domandaService.generaQuizConfini(15);
     }
    
     @GetMapping("miste")
     public List<Domanda> getDomandeMiste() {
         List<Domanda> domande = null;
         boolean noError = false;

         while (!noError) {
             try {
                 domande = domandaService.generaDomandeMiste(15);
                 noError = true;
             } catch (Exception e) {
                 System.err.println("Errore durante la generazione delle domande miste: " + e.getMessage());
             }
         }

         return domande;
     }
     
     @PostMapping("saveSession")
     public ResponseEntity<Void> saveSession(@RequestBody Map<String, Object> payload) {
         try {
             String username = (String) payload.get("username");
             String type = (String) payload.get("type");
             int score = (int) payload.get("score");

             // Log per debug
             System.out.println("Received session data:");
             System.out.println("Username: " + username);
             System.out.println("Type: " + type);
             System.out.println("Score: " + score);

             sessioneService.saveSession(username, type, score);
             return ResponseEntity.ok().build();
         } catch (Exception e) {
             e.printStackTrace();
             return ResponseEntity.badRequest().build();
         }
     }
    
}


