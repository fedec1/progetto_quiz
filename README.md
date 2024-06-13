# Progetto Quiz Nazioni
Sviluppo di un'applicazione web che mostri 15 domande a risposta multipla all'utente riguardanti capitali e stati confinanti e mostri un punteggio finale

## Collaboratori

- Federico Colantuono
- William Fernandez
- Gianluca Fiore
- Daniele Panzica

## Fasi di sviluppo

### Architettura del Database

Il database è stato fornito inizialmente con i seguenti campi:

- *alpha2code* : contiene gli identificativi a due lettere per le nazioni (es. IT)
- *alpha3code* : contiene gli identificativi a tre lettere per le nazioni (es. ITA)
- *altSpellings* : contiene una lista di nomi alternativi per la nazione
- *area* : contiene un dato relativo alla superficie della nazione
- *borders* : contiene una lista di nazioni confinanti (indicate da un alpha3code)
- *callingCodes* : contiene il prefisso telefonico della relativa nazione
- *capital* : contiene la capitale della nazione
- *currencies* : contiene un json con le valute e simboli
- *demonym* : aggettivo di appartenenza alla nazione (es: Italy - Italian)
- *flag* : contiene un link all'immagine della bandiera della nazione
- *languages* : campo contenente un json relativo alle lingue
- *latlng* : campo contenente latitudine e longitudine
- *name* : nome della nazione
- *nativeName* : nome della nazione in lingua originale
- *population* : dato relativo alla popolazione
- *region* : continente di appartenenza
- *translations* : contiene un json per le traduzioni del nome nazione nelle altre lingue disponibili

Il DB è stato poi aggiornato inserendo una Primary Key ID e in java è stata costruita una classe per modificare i valori del campo 'flag', contenente link obsoleti, aggiornandoli con i percorsi relativi alla cartella delle immagini.

### Java Back-end

#### Pacchetto 'accessori'

##### Classe FlagImporter

La classe è stata ideata per aggiornare i valori della colonna 'flag' con percorsi locali aggiornati alle immagini .svg