import java.io.File;

public class Mkpkg {
    public static void main(String[] args) {

        if (args.length <= 0) {
            System.err.println("mkpkg: No package specified");
            System.exit(1);
        }

        String path = args[0].replace(".", "/");
        File f = new File(path);
        if (!f.mkdirs()) {
            System.err.println("Error creating package");
        }
    }
}
