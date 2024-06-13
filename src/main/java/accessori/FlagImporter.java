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
        SpringApplication.run(FlagImporter.class, args);
    }

    @Autowired
    private NazioneService nazioneService;

    @Bean
    public CommandLineRunner importBandiere() {
        return args -> {
            String folderPath = ".\\maboglia country-flags main svg";
            File folder = new File(folderPath);
            File[] listOfFiles = folder.listFiles((dir, name) -> name.toLowerCase().endsWith(".svg"));

            if (listOfFiles != null) {
                Map<String, String> alphaCodeToFilePathMap = new HashMap<>();
                for (File file : listOfFiles) {
                    if (file.isFile()) {
                        String fileName = file.getName();
                        String alphaCode = fileName.substring(0, 2).toUpperCase();
                        alphaCodeToFilePathMap.put(alphaCode, file.getAbsolutePath());
                    }
                }

                for (Map.Entry<String, String> entry : alphaCodeToFilePathMap.entrySet()) {
                    String alphaCode = entry.getKey();
                    String filePath = entry.getValue();

                    Nazione nazione = nazioneService.getNazioneByAlpha2Code(alphaCode);
                    if (nazione != null) {
                        nazione.setBandiera(filePath);
                        nazioneService.saveNazione(nazione);
                    }
                }
                System.out.println("Aggiornamento del database completato con successo.");
            } else {
                System.out.println("La cartella specificata non contiene file SVG.");
            }
        };
    }
}
