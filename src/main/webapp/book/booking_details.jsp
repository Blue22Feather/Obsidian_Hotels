<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>test</title>
    </head>
    <body>
        <%
            String hotelName = request.getParameter("book__branch");
            String roomType = request.getParameter("book__hab-type");
            String dateIn = request.getParameter("book__checkIn-date");
            String dateOut = request.getParameter("book__checkOut-date");
            out.print(hotelName +" "+ roomType +" "+ dateIn +" "+ dateOut);
        %>
    </body>
</html>