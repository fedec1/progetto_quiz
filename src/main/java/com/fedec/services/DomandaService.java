package com.fedec.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fedec.entities.Domanda;
import com.fedec.entities.Nazione;
import com.fedec.repos.NazioneDAO;

@Service
public class DomandaService {

    @Autowired
    private NazioneDAO dao;

    @Transactional(readOnly = true)
    public Domanda generaDomandaCapitale(int difficoltà) {
        List<Nazione> nazioni = dao.findByDifficulty(difficoltà);

        Random random = new Random();
        Nazione nazioneScelta = nazioni.get(random.nextInt(nazioni.size()));

        String regione = nazioneScelta.getRegion(); // get la regione della nazione scelta
        List<Nazione> nazioniStessaRegione = dao.findByRegion(regione); // get nazioni della stessa regione

        String domanda = "Qual è la capitale di questo stato?\n " + nazioneScelta.getName();
        String rispostaCorretta = nazioneScelta.getCapital();

        List<String> opzioni = new ArrayList<>();
        opzioni.add(rispostaCorretta);
        while (opzioni.size() < 4) {
            Nazione nazioneRandom = nazioniStessaRegione.get(random.nextInt(nazioniStessaRegione.size()));
            if (!opzioni.contains(nazioneRandom.getCapital())) {
                opzioni.add(nazioneRandom.getCapital());
            }
        }
        Collections.shuffle(opzioni);

        return new Domanda(domanda, rispostaCorretta, opzioni);
    }
    
    @Transactional(readOnly = true)
    public Domanda generaDomandaBandiere(int difficoltà){
    	List<Nazione> nazioni = dao.findByDifficulty(difficoltà);
    	Random random = new Random();
    	Nazione nazioneScelta = nazioni.get(random.nextInt(nazioni.size()));
    	String domanda = "A quale stato corrisponde questa bandiera?\n ";
    	String rispostaCorretta = nazioneScelta.getName();
    	String path = nazioneScelta.getBandiera();
    	
    	List<String> opzioni = new ArrayList<>();
        opzioni.add(rispostaCorretta);
        while (opzioni.size() < 4) {
            Nazione nazioneRandom = nazioni.get(random.nextInt(nazioni.size()));
            if (!opzioni.contains(nazioneRandom.getName())) {
                opzioni.add(nazioneRandom.getName());
            }
        }
        Collections.shuffle(opzioni);

        return new Domanda(domanda, rispostaCorretta, opzioni, path);
    	
    }

    @Transactional(readOnly = true)
    public Domanda generaDomandaConfini(int difficoltà) {
    	List<Nazione> nazioni = dao.findByDifficulty(difficoltà);

        Random random = new Random();
        Nazione nazioneScelta = null;
        List<String> confini = new ArrayList<>();  

        // while  fino a trovare una nazione con confini
        while (confini.isEmpty()) {
            nazioneScelta = nazioni.get(random.nextInt(nazioni.size()));
            confini = nazioneScelta.getBordersAsList(nazioneScelta.getBorders());
        }

        String domanda = "Con quale nazione confina " + nazioneScelta.getName() + "?";
        String rispostaCorretta = dao.getNazioneByAlpha3Code(confini.get(random.nextInt(confini.size()))).getName();

        List<String> opzioni = new ArrayList<>();
        opzioni.add(rispostaCorretta);

      
        while (opzioni.size() < 4) {
            Nazione nazioneRandom = nazioni.get(random.nextInt(nazioni.size()));
            if (!opzioni.contains(nazioneRandom.getName()) && !confini.contains(nazioneRandom.getAlpha3Code())) {
                opzioni.add(nazioneRandom.getName());
            }
        }

        Collections.shuffle(opzioni);

        return new Domanda(domanda, rispostaCorretta, opzioni);
    }

    @Transactional(readOnly = true)
    public List<Domanda> generaDomandeMiste(int numeroDiDomande, int difficoltà) {
        List<Domanda> domande = new ArrayList<>();
        Random random = new Random();
        for (int i = 0; i < numeroDiDomande; i++) {
            int tipoDomanda = random.nextInt(3); // genera un numero casuale tra 0 e 2
            try {
                switch (tipoDomanda) {
                    case 0:
                        domande.add(generaDomandaCapitale(difficoltà));
                        break;
                    case 1:
                        domande.add(generaDomandaConfini(difficoltà));
                        break;
                    case 2:
                        domande.add(generaDomandaBandiere(difficoltà));
                        break;
                }
            } catch (IllegalStateException e) {
                i--; // ripete il ciclo se non è stato possibile generare una domanda (ad es. per mancanza di confini)
            }
        }
        return domande;
    }
    
    
    public List <Domanda> generaQuizCapitali(int numeroDiDomande, int difficoltà){
    	List<Domanda> domande = new ArrayList<>();
    	for (int i = 0; i < numeroDiDomande; i++) {
    		domande.add(generaDomandaCapitale(difficoltà));
    	}
    	return domande;
    }
    
    public List <Domanda> generaQuizBandiere(int numeroDiDomande, int difficoltà){
    	List<Domanda> domande = new ArrayList<>();
    	for (int i = 0; i < numeroDiDomande; i++) {
    		domande.add(generaDomandaBandiere(difficoltà));
    	}
    	return domande;
    }
    
    public List <Domanda> generaQuizConfini(int numeroDiDomande, int difficoltà){
    	List<Domanda> domande = new ArrayList<>();
    	for (int i = 0; i < numeroDiDomande; i++) {
    		domande.add(generaDomandaConfini(difficoltà));
    	}
    	return domande;
    }
}



