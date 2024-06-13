package com.fedec.controllers;

import java.util.List;

public class Domanda {
	
	    private String domanda;
	    private String rispostaCorretta;
	    private List<String> opzioni;

	
	    public Domanda(String domanda, String rispostaCorretta, List<String> opzioni) {
	        this.domanda = domanda;
	        this.rispostaCorretta = rispostaCorretta;
	        this.opzioni = opzioni;
	    }


	    public String getDomanda() {
	        return domanda;
	    }

	    public void setDomanda(String domanda) {
	        this.domanda = domanda;
	    }

	    public String getRispostaCorretta() {
	        return rispostaCorretta;
	    }

	    public void setRispostaCorretta(String rispostaCorretta) {
	        this.rispostaCorretta = rispostaCorretta;
	    }

	    public List<String> getOpzioni() {
	        return opzioni;
	    }

	    public void setOpzioni(List<String> opzioni) {
	        this.opzioni = opzioni;
	    }
	}

