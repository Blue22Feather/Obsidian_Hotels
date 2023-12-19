import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import obsidian_systems.connection_DDBB;

public class test2 {
    public static void main(String[] args) {
        //datos crudos
        String raw_hotelName = "1";
        String raw_roomType = "2";
        String raw_dateIn = "2000-1-1";
        String raw_dateOut = "2000-1-1";

        //datos intermedios
        int hotelID = Integer.parseInt(raw_hotelName);
        int roomID = Integer.parseInt(raw_roomType);

        //datos auxiliares
        connection_DDBB connex = new connection_DDBB();
        Connection cn = null;
        Statement stm = null;
        ResultSet rs = null;

        //datos fijos
        String hotelName = "";
        String roomType = "";
        String dateIn = "";
        String dateOut = "";

        cn = connex.conect();
        try {
            Statement stm = cn.createStatement();
            rs = stm.executeQuery("SELECT branch_name FROM hotels");
            System.out.println(rs)
        } catch (Exception e) {
            out.println("error fatal");
            e.printStackTrace();
        }

}