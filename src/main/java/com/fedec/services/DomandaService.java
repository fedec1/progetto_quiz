package com.fedec.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fedec.controllers.Domanda;
import com.fedec.entities.Nazione;
import com.fedec.repos.NazioneDAO;

@Service
public class DomandaService {

    @Autowired
    private NazioneDAO dao;

    @Transactional(readOnly = true)
    public Domanda generaDomandaCapitale() {
        List<Nazione> nazioni = dao.findAll();

        Random random = new Random();
        Nazione nazioneScelta = nazioni.get(random.nextInt(nazioni.size()));

        String domanda = "Qual è la capitale di " + nazioneScelta.getName() + "?";
        String rispostaCorretta = nazioneScelta.getCapital();

        List<String> opzioni = new ArrayList<>();
        opzioni.add(rispostaCorretta);
        while (opzioni.size() < 4) {
            Nazione nazioneRandom = nazioni.get(random.nextInt(nazioni.size()));
            if (!opzioni.contains(nazioneRandom.getCapital())) {
                opzioni.add(nazioneRandom.getCapital());
            }
        }
        Collections.shuffle(opzioni);

        return new Domanda(domanda, rispostaCorretta, opzioni);
    }

    @Transactional(readOnly = true)
    public Domanda generaDomandaConfini() {
        List<Nazione> nazioni = dao.findAll();
        if (nazioni.isEmpty()) {
            throw new IllegalStateException("Non ci sono nazioni nel database.");
        }

        Random random = new Random();
        Nazione nazioneScelta = nazioni.get(random.nextInt(nazioni.size()));

        List<String> confini = nazioneScelta.getBorders();
        if (confini == null || confini.isEmpty()) {
            throw new IllegalStateException("La nazione scelta non ha nazioni confinanti.");
        }

        String domanda = "Con quale nazione confina " + nazioneScelta.getName() + "?";
        String rispostaCorretta = dao.getNazioneByAlpha3Code(confini.get(random.nextInt(confini.size()))).getName();

        List<String> opzioni = new ArrayList<>();
        opzioni.add(rispostaCorretta);
        while (opzioni.size() < 4) {
            Nazione nazioneRandom = nazioni.get(random.nextInt(nazioni.size()));
            if (!opzioni.contains(nazioneRandom.getName())) {
                opzioni.add(nazioneRandom.getName());
            }
        }
        Collections.shuffle(opzioni);

        return new Domanda(domanda, rispostaCorretta, opzioni);
    }

    @Transactional(readOnly = true)
    public List<Domanda> generaDomandeMiste(int numeroDiDomande) {
        List<Domanda> domande = new ArrayList<>();
        Random random = new Random();
        for (int i = 0; i < numeroDiDomande; i++) {
            if (random.nextBoolean()) {
                domande.add(generaDomandaCapitale());
            } else {
                try {
                    domande.add(generaDomandaConfini());
                } catch (IllegalStateException e) {
                    i--; // Ripeti il ciclo se non ci sono confini per la nazione selezionata
                }
            }
        }
        return domande;
    }
}


