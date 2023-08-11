import com.google.gson.Gson;
import com.google.gson.JsonParser;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Main {
    public static void main(String[] args) throws IOException {
        cfg.Tables tables = new cfg.Tables(file -> JsonParser.parseString(
                new String(Files.readAllBytes(Paths.get("../GenerateDatas/json", file + ".json")), "UTF-8")));
        System.out.println("== run == " + tables.getTbGlobalConfig().getBagCapacity());
    }
}
