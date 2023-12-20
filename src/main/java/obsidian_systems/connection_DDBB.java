package obsidian_systems;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connection_DDBB {
    private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/obsidian_systems";
    private static final String USR = "ObsidianGuest";
    private static final String PSWD = "obsidian_stone";

    static {
        System.out.println("cargando driver...");
        try {
            Class.forName(CONTROLADOR);
            //System.out.println("driver cargado");
        } catch (ClassNotFoundException e) {
            System.out.println("ERROR al cargar driver");
            e.printStackTrace();
        }
    }

    public Connection conect() {
        Connection ctn = null;
        //System.out.println("conectando a la base de datos...");
        try {
            ctn = DriverManager.getConnection(URL, USR, PSWD);
            //System.out.println("conexion activa");
        } catch (SQLException e) {
            System.out.println("ERROR al conectar a la base de datos");
            e.printStackTrace();
        }
        return ctn;
    }
}