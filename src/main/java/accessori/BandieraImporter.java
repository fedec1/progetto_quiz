package accessori;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class BandieraImporter {
    public static void main(String[] args) {
        String folderPath = ".\\maboglia country-flags main svg";
        String dbUrl = "jdbc:mysql://localhost:3307/its_2024"; // Sostituisci con il tuo URL del database
        String dbUser = "ITS_2024";
        String dbPassword = "abibabidi1";

        // Step 1: Leggi i file SVG dalla cartella
        File folder = new File(folderPath);
        File[] listOfFiles = folder.listFiles((dir, name) -> name.toLowerCase().endsWith(".svg"));

        if (listOfFiles != null) {
            // Step 2: Estrai il codice alfa a 2 lettere e mappa i percorsi dei file ai rispettivi codici alfa
            Map<String, String> alphaCodeToFilePathMap = new HashMap<>();
            for (File file : listOfFiles) {
                if (file.isFile()) {
                    String fileName = file.getName();
                    String alphaCode = fileName.substring(0, 2).toUpperCase();
                    alphaCodeToFilePathMap.put(alphaCode, file.getAbsolutePath());
                }
            }

            // Step 3: Aggiorna il database
            try (Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword)) {
                for (Map.Entry<String, String> entry : alphaCodeToFilePathMap.entrySet()) {
                    String alphaCode = entry.getKey();
                    String filePath = entry.getValue();

                    String updateSQL = "UPDATE nazioni SET flag = ? WHERE alpha2Code = ?";
                    try (PreparedStatement preparedStatement = connection.prepareStatement(updateSQL)) {
                        preparedStatement.setString(1, filePath);
                        preparedStatement.setString(2, alphaCode);
                        preparedStatement.executeUpdate();
                    }
                }
                System.out.println("Aggiornamento del database completato con successo.");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("La cartella specificata non contiene file SVG.");
        }
    }
}
