package accessori;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.fedec.entities.Nazione;
import com.fedec.services.NazioneService;

@SpringBootApplication
public class FlagImporter {

    public static void main(String[] args) {
        SpringApplication.run(FlagImporter.class, args); //esecuzione dell'applicazione
    }

    @Autowired
    private NazioneService dao;

    @Bean
    public CommandLineRunner importBandiere() {
        return args -> {
            String folderPath = ".\\maboglia country-flags main svg"; //percorso relativo della cartella contenente le bandiere
            File folder = new File(folderPath); //crea un nuovo oggetto file, con percorso la cartella delle bandiere
            File[] listOfFiles = folder.listFiles((dir, name) -> name.toLowerCase().endsWith(".svg")); //se il file termina per .svg, esso viene aggiunto all'array di files

            if (listOfFiles != null) {
                Map<String, String> alphaCodeToFilePathMap = new HashMap<>(); //crea una nuova hashmap che mappa gli alphacode2 ai nomi dei file nell'array
                for (File file : listOfFiles) { //per ogni file dell'array
                    if (file.isFile()) {
                        String fileName = file.getName(); //restituisce il nome del file(ad esempio it.svg)
                        String alphaCode = fileName.substring(0, 2).toUpperCase(); //prende i primi due caratteri del file e li converte in maiusc
                        alphaCodeToFilePathMap.put(alphaCode, file.getAbsolutePath()); //mappa l'alphacode al percorso assoluto del file
                    }
                }

                for (Map.Entry<String, String> entry : alphaCodeToFilePathMap.entrySet()) { // per ogni entry della mappa precedente (coppia chiave valore, ad es 'IT' : '/percorso'
                    String alphaCode = entry.getKey(); //estrae la key (alphacode2)
                    String filePath = entry.getValue(); //estrae il value (percorso file)

                    Nazione nazione = dao.getNazioneByAlpha2Code(alphaCode); //istanza oggetto nazione cercata per alphacode corrispondende
                    if (nazione != null) { //se c'è
                        nazione.setBandiera(filePath); //setta la bandiera con il percorso file
                        dao.saveNazione(nazione); //aggiorna il record corrispondente
                    }
                }
                System.out.println("Aggiornamento del database completato con successo.");
            } else {
                System.out.println("La cartella specificata non contiene file SVG."); //listoffiles è null
            }
        };
    }
}
