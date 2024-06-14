package com.fedec.controllers;

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

    @GetMapping("capitale")
    public Domanda getDomandaCapitale() {
        return domandaService.generaDomandaCapitale();
    }

    @GetMapping("confini")
    public Domanda getDomandaConfini() {
        return domandaService.generaDomandaConfini();
    }

    @GetMapping("miste")
    public List<Domanda> getDomandeMiste() {
        return domandaService.generaDomandeMiste(15);
    }
    
    @GetMapping("bandiere")
    public List<Domanda> getDomandaBandiere() {
        return domandaService.generaDomandeMiste(15);
    }
}


