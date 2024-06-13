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

##### Classe Convertitore

Classe di utility ideata per convertire il campo 'border' da formato text a lista.

#### Entities

##### Classe Nazione

La classe **Nazione** rappresenta un'entità che mappa la corrispondente tabella nel DB. Implementa i getters per alphacodes, nomi delle nazioni, capitali, bandiere e confini.

#### Repos

##### NazioneDAO

La classe NazioneDAO è un'interfaccia che rappresenta il DAO per l'entità Nazione. Oltre ai metodi CRUD sono stati implementati anche **getNazioneByAlpha2Code** e **getNazioneByAlpha3Code**, metodi di query derivati che consentono di recuperare le nazioni dal database utilizzando i codici alfa a due e tre lettere.

#### Services

##### NazioneService

La classe **NazioneService** è un'interfaccia che definisce i metodi di servizio per l'entità **Nazione**. Vengono implementati i seguenti metodi:

- **List<Nazione> getNazioni()** : restituisce una lista di oggetti **Nazione**
- **Nazione getNazioneById(int id)** : ritorna un oggetto nazione dato un id come parametro
- **Nazione getNazioneByAlpha2Code(String alpha2Code)** : ritorna un oggetto nazione dato un codice alfa2 come parametro
- **Nazione getNazioneByAlpha3Code(String alpha3Code)** : ritorna un oggetto nazione dato un codice alfa3 come parametro
- **public Nazione saveNazione(Nazione nazione)** : salva una nazione nel database
