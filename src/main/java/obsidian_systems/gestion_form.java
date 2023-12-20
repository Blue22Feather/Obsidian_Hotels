package obsidian_systems;

/* Manejo de base de datos */
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

/* Formateo de fechas */
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* Formateo de moneda */
import java.text.NumberFormat;
import java.util.Locale;

/* Calculo de fechas */
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class gestion_form {
    public static String findData(String findColumna, String findTabla, String filter, String raw_filterValue) {
        /* Variables de metodo */
        String dataResult = null;
        int filterValue = Integer.parseInt(raw_filterValue);

        /* Variables de funcion */
        connection_DDBB connex = new connection_DDBB();

        Connection cn = connex.conect();
        Statement stm = null;
        ResultSet rs = null;

        try {
            System.out.println("Buscando datos...");
            stm = cn.createStatement();
            rs = stm.executeQuery("SELECT " + findColumna + " FROM " + findTabla +" WHERE " + filter + " = " + filterValue);
            if (rs.next()) {
                dataResult = rs.getString(findColumna);
                //System.out.println("Retornando datos...");
            } else {
                System.out.println("ERROR en el retorno de datos");
            }
        } catch (Exception e) {
            System.out.println("ERROR en la busqueda de datos");
            e.printStackTrace();
        } finally {
            // Cerrar la conexión y liberar recursos
            try {
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.out.println("error al cerrar el ResultSet");
            }

            try {
                if (stm != null) {
                    stm.close();
                }
            } catch (SQLException e) {
                // Manejo de excepciones al cerrar el Statement
                System.out.println("error al cerrar el Statement");
            }

            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (SQLException e) {
                System.out.println("error al cerrar la Conexion");
            }
        }
        return dataResult;
    }

    public static String formatDate(String dateIn) {
        try {
            // Crear un objeto SimpleDateFormat para analizar la fecha
            SimpleDateFormat formatoEntrada = new SimpleDateFormat("yyyy-MM-dd");
            Calendar calendario = Calendar.getInstance();
            calendario.setTime(formatoEntrada.parse(dateIn));

            // Crear un objeto SimpleDateFormat para formatear la fecha en el estilo deseado
            SimpleDateFormat formatoSalida = new SimpleDateFormat("d 'de' MMMM 'del' yyyy");

            return formatoSalida.format(calendario.getTime());
        } catch (Exception e) {
            // Manejo de errores en caso de que la fecha no pueda ser transformada
            return "Fecha inválida";
        }
    }

    public static long stayNights(String dateStart, String dateEnd) {
        LocalDate start = LocalDate.parse(dateStart);
        LocalDate end = LocalDate.parse(dateEnd);

        return ChronoUnit.DAYS.between(start, end);
    }

    public static int roomTotalPrice(String raw_filterValue, int stayDays) {
        String raw_unitePrice = findData("room_unitPrice", "rooms", "room_id", raw_filterValue);
        int unitePrice = Integer.parseInt(raw_unitePrice);

        return unitePrice * stayDays;
    }

    public static String priceFormat(int Value) {
        Locale argentina = new Locale.Builder().setLanguage("es").setRegion("AR").build();
        NumberFormat formatoMoneda = NumberFormat.getCurrencyInstance(argentina);
        return formatoMoneda.format(Value);
    }
}


