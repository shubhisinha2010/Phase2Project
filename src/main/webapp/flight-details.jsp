<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Flight Details</title>
<h2>Available Flights as per the details entered by you</h2>
<style>
body {
  background-color: rgb(192,192,192)
;
}
</style>

</head>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/flyway"
        user="root" password="Shubhi@123"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM flights WHERE Source= "${param.source}" AND Destination= "${param.destination}";
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Flights Details</h2></caption>
            <tr>
                <th>Source</th>
                <th>Destination</th>
                <th>Flight Name</th>
                <th>Price per Ticket</th>
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.Source}" /></td>
                    <td><c:out value="${user.Destination}" /></td>
                    <td><c:out value="${user.FlightName}" /></td>
                    <td><c:out value="${user.Price}" /></td>
                       
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
<%   
  
String source=request.getParameter("source");    
session.setAttribute("sour",source);  
String destination=request.getParameter("destination");    
session.setAttribute("dest",destination); %>
<a href="personal-details.jsp"><h3 align="center">Book Now</h3></a>
</html>