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

#### Accessories

##### Classe FlagImporter

L'applicazione è stata ideata per aggiornare i valori della colonna 'flag' con percorsi locali aggiornati alle immagini .svg


```java
{
    String folderPath = ".\\bandiere-nazioni"; 
    File folder = new File(folderPath); 
    File[] listOfFiles = folder.listFiles((dir, name) -> name.toLowerCase().endsWith(".svg"));
}
```


**folderPath** è una variabile contenente il percorso alla cartella contenente le immagini delle bandiere in formato .svg. Si può modificare quest'ultima a piacimento nel caso si volesse cambiare il nome della cartella o il percorso.  
**folder** è un oggetto di tipo file che viene costruito con il folderPath precedente  
**listOfFiles** è un array di files che viene creato chiamando il metodo listFiles su folder e aggiungendo un filtro (name) che vada a selezionare tutti i file di formato .svg  

Dopo aver controllato che l'array appena creato non sia vuoto, creiamo la HashMap **alphaCodeToFilePathMap** per mappare  gli alphaCode2 delle nazioni ai nomi dei file delle rispettive bandiere in formato .svg.  

```java
Map<String, String> alphaCodeToFilePathMap = new HashMap<>();
```

Si effettua in seguito un ciclo, iterando sull'array di files per estrarre l'alphacode dalla stringa del file e mapparlo con il percorso corretto.

```java
for (File file : listOfFiles) { 
                    if (file.isFile()) {
                        String fileName = file.getName(); 
                        String alphaCode = fileName.substring(0, 2).toUpperCase(); 
                        alphaCodeToFilePathMap.put(alphaCode, folderPath + "\\" +  alphaCode + ".svg"); 
                    }
                }
```

Nella stringa **fileName** verrà contenuto il nome del file chiamando il metodo getName().  
Nella stringa **alphaCode** viene estratto l'alphacode a due cifre dal nome precedente.  
Il metodo **put**  chiamato sulla hashmap inserisce come key l'alphacode e come value il percorso alla cartella relativo, concatenato con il nome del file.

Viene in seguito effettuato un secondo ciclo for-each per andare ad aggiornare correttamente il campo 'flag' DB con i nuovi percorsi generati precedentemente.

```java
for (Map.Entry<String, String> entry : alphaCodeToFilePathMap.entrySet()) {
                    String alphaCode = entry.getKey(); 
                    String filePath = entry.getValue(); 

                    Nazione nazione = nazioneService.getNazioneByAlpha2Code(alphaCode); 
                    if (nazione != null) { 
                        nazione.setBandiera(filePath); 
                        nazioneService.saveNazione(nazione); 
                    }
                }
```

Per ogni entry della hashmap precedente vengono estratti **alphaCode** (la key) e **filePath** (il valore).  
In seguito viene creata una variabile nazione chiamando il metodo **getNazioneByAlpha2Code** con parametro alphaCode, per cercare la nazione corrispondente all'alphacode appena estratto.  
In seguito viene salvato il record corrispondente nel DB chiamando il metodo **saveNazione()**.  
Per maggiori dettagli si veda la sezione *Repos*.  


#### Entities

##### Classe Nazione

La classe **Nazione** rappresenta un'entità che mappa la corrispondente tabella nel DB. Implementa i getters per alphacodes, nomi delle nazioni, capitali, bandiere, regione e confini.  
E' stato anche implementato il metodo **getBordersAsList()** che prende come parametro la stringa restituita da **getBorders()** e restituisce una lista di stringhe (in questo caso una lista di alpha3code). Nel dettaglio:  

```java
public List<String> getBordersAsList(String bordersString) {
        List<String> borders = new ArrayList<>();

        ....

        return borders;
    }
```

```java
bordersString = bordersString.substring(1, bordersString.length() - 1);
```

Viene inizialmente creata una substring che rimuove le due parentesi quadre (all'inizio e alla fine).  

```java
String[] borderArray = bordersString.split(",");
```

Viene poi creato un array di stringhe **borderArray** con la virgola come separatore.

```java
for (String border : borderArray) {
            borders.add(border.trim().replaceAll("\"", "")); 
        }
```

Il ciclo for in seguito rimuove tutti gli eventuali spazi bianchi rimasti e le occorrenze dei doppi apici, in modo da ritornare un alpha3code pulito. 

##### Classe Domanda

La classe è stata ideata per modellare una domanda. Sono presenti due costruttori, uno per costruire un oggetto Domanda generico e uno per le domande riguardanti le bandiere (prende un argomento in più, quello del percorso file). Qui i parametri:  

- **String domanda** : stringa contenente la domanda
- **String rispostaCorretta** : stringa per la risposta corretta
- **List<String> opzioni** : Lista di stringhe contenenti le possibili opzioni
- **String path** : stringa contenente un percorso file (usato dal secondo costruttore)



#### Repos

##### NazioneDAO

La classe NazioneDAO è un'interfaccia che rappresenta il DAO per l'entità Nazione. Oltre ai metodi CRUD sono stati implementati anche **getNazioneByAlpha2Code** e **getNazioneByAlpha3Code**, metodi di query derivati che consentono di recuperare le nazioni dal database utilizzando i codici alfa a due e tre lettere e il metodo **findByRegion()** per restituire le nazioni avente la regione passata come parametro.

#### Services

##### NazioneService

La classe **NazioneService** è un'interfaccia che definisce i metodi di servizio per l'entità **Nazione**. Vengono implementati i seguenti metodi:

- **List<Nazione> getNazioni()** : restituisce una lista di oggetti **Nazione**
- **Nazione getNazioneById(int id)** : ritorna un oggetto nazione dato un id come parametro
- **Nazione getNazioneByAlpha2Code(String alpha2Code)** : ritorna un oggetto nazione dato un codice alfa2 come parametro
- **Nazione getNazioneByAlpha3Code(String alpha3Code)** : ritorna un oggetto nazione dato un codice alfa3 come parametro
- **public Nazione saveNazione(Nazione nazione)** : salva una nazione nel database
- **List<Nazione> findByRegion(String region)** : restituisce una lista di nazioni avente la regione passata come parametro

##### NazioneServiceImp

La classe **NazioneServiceImp** fornisce semplicemente l'implementazione dei metodi precedenti.

##### DomandaService

La classe **DomandaService** è un servizio che genera domande sui paesi, le loro capitali, bandiere e confini. Utilizza **NazioneDAO** per creare le domande.

Il metodo **generaDomandaCapitale** genera una domanda che chiede  di identificare la capitale di una nazione e restituisce un oggetto di tipo domanda.

```java
public Domanda generaDomandaCapitale() {
        
        ...

        return new Domanda(domanda, rispostaCorretta, opzioni);
    }
```

```java
List<Nazione> nazioni = dao.findAll();
```

Viene creata prima di tutto una lista contenente tutte le nazioni tramite il metodo **findAll()**.

```java
Random random = new Random();
Nazione nazioneScelta = nazioni.get(random.nextInt(nazioni.size()));
```

In seguito viene creato un oggetto Random per generare un numero casuale compreso tra **0** e **nazioni.size() - 1**. Attraverso il metodo **get** chiamato sulla lista *nazioni*, ci viene restituita la nazione scelta casualmente.

```java
String regione = nazioneScelta.getRegion(); 
List<Nazione> nazioniStessaRegione = dao.findByRegion(regione); 
```
Viene poi chiamato il metodo **getRegion()** sulla nazione scelta per conoscerne il continente di appartenenza. In seguito viene creata una sottolista di nazioni avente la stessa region della nazione scelta.  L'idea è quella di limitare le opzioni disponibili per la domanda a nazioni "più simili" tra di loro, in modo da non farla risultare troppo semplice.  

```java
String domanda = "Qual è la capitale di questo stato?\n " + nazioneScelta.getName();
String rispostaCorretta = nazioneScelta.getCapital();
```

Successivamente viene scritta la domanda, concatenando una stringa costante con il nome della nazione scelta.  
La stringa **rispostaCorretta** contiene invece la capitale della nazione scelta.

```java
List<String> opzioni = new ArrayList<>();
```
Viene creata una lista di opzioni.  

```java
opzioni.add(rispostaCorretta);
```
A questa viene aggiunta inizialmente la risposta corretta. In seguito viene effettuato un ciclo for per aggiungerne altre casualmente.  

```java
while (opzioni.size() < 4) {
            Nazione nazioneRandom = nazioniStessaRegione.get(random.nextInt(nazioniStessaRegione.size()));
            if (!opzioni.contains(nazioneRandom.getCapital())) {
                opzioni.add(nazioneRandom.getCapital());
            }
        }
```

Le opzioni vengono poi permutate casualmente con il metodo shuffle e finalmente viene restituita la domanda.

```java
Collections.shuffle(opzioni);
```

Il metodo **generaDomandaBandiere()** si comporta nel medesimo modo. Differisce nel non creare una sottolista di nazioni della stessa regione (non è detto che bandiere simili implichi nazioni vicine) e nel ritornare una domanda con un parametro in più, ovvero il path dell'immagine della bandiera.  

Il metodo **generaDomandaConfini()** funziona in maniera simile. La differenza sta nell'ulteriore controllo aggiunto nel ciclo while, in modo tale che non venga aggiunta un'altra nazione confinante oltre alla risposta corretta nelle opzioni.



