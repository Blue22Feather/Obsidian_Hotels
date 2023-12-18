<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "main.obsidian_systems.connection_DDBB"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.Statement"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>test</title>
    </head>
    <body>
        <%
            String userName = request.getParameter("usr_name");
            String userLastName = request.getParameter("usr_lastname");
            String userMail = request.getParameter("usr_email");
            String userPhoNum = request.getParameter("usr_phoneNumber");

            String sql_query = "INSERT INTO guests VALUES (null,'"+userName+"', '"+userLastName+"', '"+userPhoNum+"', '"+userMail+"', null)";

            connection_DDBB connex = new connection_DDBB();

            Connection cn = connex.conect();
            try {
                Statement stm = cn.createStatement();
                stm.executeUpdate(sql_query);
            } catch (Exception e) {
                out.println("error fatal");
                e.printStackTrace();
            }
        %>
    </body>
</html>