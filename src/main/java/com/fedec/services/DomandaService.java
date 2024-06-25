package com.fedec.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonProcessingException;
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

        String domanda = "";
		try {
			domanda = "Qual è la capitale di questo stato:\n" + nazioneScelta.deserializeTranslations(nazioneScelta.getTranslations()).get("it");
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
    	String rispostaCorretta = "";
		try {
			rispostaCorretta = nazioneScelta.deserializeTranslations(nazioneScelta.getTranslations()).get("it");
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	String path = nazioneScelta.getBandiera();
    	
    	List<String> opzioni = new ArrayList<>();
        opzioni.add(rispostaCorretta);
        while (opzioni.size() < 4) {
            Nazione nazioneRandom = nazioni.get(random.nextInt(nazioni.size()));
            if (!opzioni.contains(nazioneRandom.getName())) {
                try {
					opzioni.add(nazioneRandom.deserializeTranslations(nazioneRandom.getTranslations()).get("it"));
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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

        String domanda = "";
		try {
			domanda = "Con quale nazione confina " + nazioneScelta.deserializeTranslations(nazioneScelta.getTranslations()).get("it") + "?";
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        String rispostaCorretta = dao.getNazioneByAlpha3Code(confini.get(random.nextInt(confini.size()))).getName();

        List<String> opzioni = new ArrayList<>();
        opzioni.add(rispostaCorretta);

      
        while (opzioni.size() < 4) {
            Nazione nazioneRandom = nazioni.get(random.nextInt(nazioni.size()));
            if (!opzioni.contains(nazioneRandom.getName()) && !confini.contains(nazioneRandom.getAlpha3Code()) && nazioneRandom.getName()!= nazioneScelta.getName()) {
                try {
					opzioni.add(nazioneRandom.deserializeTranslations(nazioneRandom.getTranslations()).get("it"));
				} catch (JsonProcessingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            }
        }

        Collections.shuffle(opzioni);

        return new Domanda(domanda, rispostaCorretta, opzioni);
    }

    @Transactional(readOnly = true)
    public List<Domanda> generaDomandeMiste(int numeroDiDomande, int difficoltà) {
        List<Domanda> domande = new ArrayList<>();
        Random random = new Random();
        
        while (domande.size() < numeroDiDomande) {
            int tipoDomanda = random.nextInt(3); // genera un numero casuale tra 0 e 2
            Domanda nuovaDomanda = null;
            
            try {
                switch (tipoDomanda) {
                    case 0:
                        nuovaDomanda = generaDomandaCapitale(difficoltà);
                        break;
                    case 1:
                        nuovaDomanda = generaDomandaConfini(difficoltà);
                        break;
                    case 2:
                        nuovaDomanda = generaDomandaBandiere(difficoltà);
                        break;
                }
            } catch (IllegalStateException e) {
                // ripete il ciclo se non è stato possibile generare una domanda (ad es. per mancanza di confini)
                continue;
            }

            if (nuovaDomanda != null && !isDomandaDoppia(domande, nuovaDomanda)) {
                domande.add(nuovaDomanda);
            }
        }
        return domande;
    }
                
    
    @Transactional(readOnly = true)
    public Domanda generaDomandaMista() {
    	Domanda d;
    	Random random = new Random();
    	int tipoDomanda = random.nextInt(3); // genera un numero casuale tra 0 e 2 per scegliere la domanda
    	int i = 1;
    	boolean isNotValid = false;
    	
    	do {
	    
	        switch (tipoDomanda) {
	            case 0:
	            	i = random.nextInt(3) + 1; // numero casuale tra 1 e 3 (valori del campo 'difficulty' nella tabella nazioni del db)
	                d = generaDomandaCapitale(i);
	                break;
	            case 1:
	            	i = random.nextInt(3) + 1; // numero casuale tra 1 e 3 (valori del campo 'difficulty' nella tabella nazioni del db)
	                d = generaDomandaConfini(i);
	                break;
	            case 2:
	            	i = random.nextInt(3) + 1; // numero casuale tra 1 e 3 (valori del campo 'difficulty' nella tabella nazioni del db)
	                d = generaDomandaBandiere(i);
	                break;
	            default:
	            	/**
	            	 * i deve essere un numero maggiore di 0 altrimenti darà errore
	            	 */
	            	isNotValid = true;
	                throw new IllegalStateException("Unexpected value: " + tipoDomanda);
	        }
    	} while (isNotValid);
    	return d;
    }
    
    public List <Domanda> generaQuizCapitali(int numeroDiDomande, int difficoltà){
    	List<Domanda> domande = new ArrayList<>();
    	
    	
    	while (domande.size() < numeroDiDomande) {
            Domanda nuovaDomanda = null;
            nuovaDomanda = generaDomandaCapitale(difficoltà);
           
             if (!isDomandaDoppia(domande, nuovaDomanda)) {
                domande.add(nuovaDomanda);
            }
        }
    	
    	return domande;
    }
    
    public List <Domanda> generaQuizBandiere(int numeroDiDomande, int difficoltà){
    	List<Domanda> domande = new ArrayList<>();
    	
    	while (domande.size() < numeroDiDomande) {
            Domanda nuovaDomanda = null;
            nuovaDomanda = generaDomandaBandiere(difficoltà);
           
             if (!isDomandaDoppiaFlag(domande, nuovaDomanda)) {
                domande.add(nuovaDomanda);
            }
        }
    	
    	return domande;
    }
    
    public List <Domanda> generaQuizConfini(int numeroDiDomande, int difficoltà){
    	List<Domanda> domande = new ArrayList<>();
    	
    	while (domande.size() < numeroDiDomande) {
            Domanda nuovaDomanda = null;
            nuovaDomanda = generaDomandaConfini(difficoltà);
           
             if (!isDomandaDoppia(domande, nuovaDomanda)) {
                domande.add(nuovaDomanda);
            }
        }
    	
    	return domande;
    }
    
    
    private boolean isDomandaDoppiaFlag(List<Domanda> domande, Domanda nuovaDomanda) {
        for (Domanda domanda : domande) {
            if (domanda.getRispostaCorretta().equals(nuovaDomanda.getRispostaCorretta())) { //una domanda sulla bandiera per essere unica basta che non abbia la stessa risposta (1:1) (ma hanno tutte la stessa stringa di  domanda)
                return true;
            }
        }
        return false;
    }
    
    private boolean isDomandaDoppia(List<Domanda> domande, Domanda nuovaDomanda) { //una domanda per essere unica basta che non abbia la stessa stringa di domanda (ma potrebbe avere la stessa risposta, vedi per nazioni confinanti)
        for (Domanda domanda : domande) {
            if (domanda.getDomanda().equals(nuovaDomanda.getDomanda())) {
                return true;
            }
        }
        return false;
    }
    
}



