package com.fedec.controllers;

import com.fedec.entities.Domanda;
import com.fedec.services.DomandaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api")
public class QuizController {

    @Autowired
    private DomandaService domandaService;

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
        return domandaService.generaDomandeMiste(15);
    }
    
    
}


