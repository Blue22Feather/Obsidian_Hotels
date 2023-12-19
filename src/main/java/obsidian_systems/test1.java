package obsidian_systems;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class test1 {
    public static void main(String[] args) {
        connection_DDBB conex = new connection_DDBB();

        Connection cn = null;
        Statement stm = null;
        ResultSet rs = null;
        String qery = "";

        /* variables para imprimir tabla */
        int id_guest = 0;
        String  names, lastnames, phone_number, mail = "";

        cn = conex.conect();

        // Prueba de respuesta
        try {
            stm = cn.createStatement();
            rs = stm.executeQuery("SELECT * FROM guests");

            System.out.println("id - nombres - apellidos - dni - correo");
            while (rs.next()){
                id_guest = rs.getInt(1);
                names = rs.getString(2);
                lastnames = rs.getString(3);
                phone_number = rs.getString(4);
                mail = rs.getString(5);
                System.out.println(id_guest + " - " + names + " - " + lastnames + " - " + phone_number + " - " + mail);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Cierre de conexion
        try {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (cn != null) {
                cn.close();
            }
            System.out.println("Conexiones cerradas");
        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}