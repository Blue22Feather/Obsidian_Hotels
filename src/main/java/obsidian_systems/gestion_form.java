package obsidian_systems;

/* Manejo de base de datos */
import java.sql.*;

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
            //System.out.println("Buscando datos...");
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
        System.out.println("El valor de " + findColumna + " en " + findTabla + " donde " + filter + " sea " + filterValue + " es " + dataResult);
        return dataResult;
    }

    public static boolean numStr(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public static String findDataDouble(String findColumna, String findTabla, String filter, String raw_filterValue, String filter2, String raw_filterValue2) {
        /* Variables de metodo */
        String dataResult = null;
        int filterValueNum;

        /* Variables de funcion */
        connection_DDBB connex = new connection_DDBB();

        Connection cn = connex.conect();
        Statement stm = null;
        ResultSet rs = null;

        if (numStr(raw_filterValue)) {
            filterValueNum = Integer.parseInt(raw_filterValue);
            try {
                //System.out.println("Buscando datos...");
                stm = cn.createStatement();
                rs = stm.executeQuery("SELECT " + findColumna + " FROM " + findTabla +" WHERE " + filter + " = " + filterValueNum + " AND " + filter2 + " = " + raw_filterValue2);
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
            System.out.println("El valor de " + findColumna + " en " + findTabla + " donde " + filter + " sea " + filterValueNum + " es " + dataResult);
        } else {
            try {
                //System.out.println("Buscando datos...");
                stm = cn.createStatement();
                rs = stm.executeQuery("SELECT " + findColumna + " FROM " + findTabla +" WHERE " + filter + " = " + raw_filterValue + " AND " + filter2 + " = " + raw_filterValue2);
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
            System.out.println("El valor de " + findColumna + " en " + findTabla + " donde " + filter + " sea " + raw_filterValue + " es " + dataResult);
        }
        return dataResult;
    }

    public static String findDataTriple(String findColumna, String findTabla, String filter, String raw_filterValue, String filter2, String raw_filterValue2, String filter3, String raw_filterValue3) {
        /* Variables de metodo */
        String dataResult = null;
        int filterValue = Integer.parseInt(raw_filterValue);

        /* Variables de funcion */
        connection_DDBB connex = new connection_DDBB();

        Connection cn = connex.conect();
        Statement stm = null;
        ResultSet rs = null;

        try {
            //System.out.println("Buscando datos...");
            stm = cn.createStatement();
            rs = stm.executeQuery("SELECT " + findColumna + " FROM " + findTabla +" WHERE " + filter + " = " + filterValue + " AND " + filter2 + " = " + raw_filterValue2 + " AND " + filter3 + " = " + raw_filterValue3 );
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
        System.out.println("El valor de " + findColumna + " en " + findTabla + " donde " + filter + " sea " + filterValue + " es " + dataResult);
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

    public static int roomTotalPrice(String raw_roomType, String raw_hotelID, int stayDays) {
        String raw_unitePrice = findDataDouble("room_unitPrice", "rooms", "room_type", raw_roomType, "hotel_ID", raw_hotelID);
        int unitePrice = Integer.parseInt(raw_unitePrice);

        return unitePrice * stayDays;
    }

    public static String priceFormat(int Value) {
        Locale argentina = new Locale.Builder().setLanguage("es").setRegion("AR").build();
        NumberFormat formatoMoneda = NumberFormat.getCurrencyInstance(argentina);
        return formatoMoneda.format(Value);
    }

    public static int getExtrasPrice(String ServiceID) {
        String unitePrice = findData("service_value", "hotel_services", "service_id", ServiceID);
        return Integer.parseInt(unitePrice);
    }

    public static void guestAdd(String raw_guestName, String raw_guestLastName, String raw_guestPhone, String raw_guestEmail) {
        //guardar invitado
        String sqlGuest = "INSERT INTO guests VALUES (null, '"+ raw_guestName +"', '" + raw_guestLastName +"', '" + raw_guestPhone + "', '" + raw_guestEmail + "', null)";

        /* Variables de funcion */
        connection_DDBB connex = new connection_DDBB();

        Connection cn = connex.conect();
        Statement stm = null;

        try {
            stm = cn.createStatement();
            stm.executeUpdate(sqlGuest);
        } catch (Exception e) {
            System.out.println("Hubo un error en la escritura de datos");
            e.printStackTrace();
        } finally {
            // Cerrar la conexión y liberar recursos
            try {
                if (stm != null) {
                    stm.close();
                }
            } catch (SQLException e) {
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
        System.out.println("Se intento agregar al usuario");
    }

    public static boolean roomDispo(String currentRoom, String currentHotel){
        /* Variables de metodo */
        String dataResult = null;

        /* Variables de funcion */
        connection_DDBB connex = new connection_DDBB();

        Connection cn = connex.conect();
        Statement stm = null;
        ResultSet rs = null;

        try {
            //System.out.println("Buscando datos...");
            stm = cn.createStatement();
            rs = stm.executeQuery("SELECT room_id FROM rooms WHERE room_type = " +  Integer.parseInt(currentRoom) + " AND hotel_id = " + Integer.parseInt(currentHotel) + " AND room_status = 'avanaible'");
            if (rs.next()) {
                dataResult = rs.getString("room_id");
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
        if (dataResult == null) {
            return false;
        } {
            return true;
        }
    }

    public static String roomDispoText(String currentRoom, String currentHotel) {
        boolean Status = roomDispo(currentRoom, currentHotel);

        if (!Status) {
            return "Habitaciones agotadas";
        } else {
            int raw_roomUnitPrice = Integer.parseInt(findDataDouble("room_unitPrice", "rooms", "room_type" , currentRoom, "hotel_id", currentHotel));
            return priceFormat(raw_roomUnitPrice);
        }
    }

    public static String reservationAdd(String raw_guestName, String raw_guestLastName, String raw_dateIn, String raw_dateOut, String raw_roomType, String raw_hotelName) {
        //Localizar habitacion
        String currentRoom = findDataTriple("room_id", "rooms", "room_type", raw_roomType, "hotel_id", raw_hotelName, "room_status", "'avanaible'");

        //Localizar registro de invitado
        String currentGuest = findDataDouble("person_id", "guests", "names", "'"+raw_guestName+"'" , "lastnames", "'"+raw_guestLastName+"'");

        //guardar reserva
        String sqlReservation = "INSERT INTO room_reservations VALUES (null, '" + currentGuest + "', '" + currentRoom + "', '" + raw_dateIn + "', '" + raw_dateOut + "', null)";

        //actualizar estado de la habitacion
        String sqlUpdateRoom = "UPDATE rooms SET room_status = 'occupied' WHERE room_id = " + currentRoom;

        /* Variables de funcion */
        connection_DDBB connex = new connection_DDBB();

        Connection cn = connex.conect();
        Statement stm = null;

        if (currentRoom != null) {
            try {
                stm = cn.createStatement();
                stm.executeUpdate(sqlReservation);
                stm.executeUpdate(sqlUpdateRoom);
            } catch (Exception e) {
                System.out.println("Hubo un error en la escritura de datos");
                e.printStackTrace();
            } finally {
                // Cerrar la conexión y liberar recursos
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
            System.out.println("se intento agregar la reserva");
        } else {
            System.out.println("Ese tipo de habitacion no esta disponible");
        }
        return findDataDouble("book_id", "room_reservations", "person_id", currentGuest, "room_id", currentRoom);
    }
}


