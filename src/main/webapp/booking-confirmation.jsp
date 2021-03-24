
<html>
<title>Booking Confirmed</title>
<h1 align="center">Your Booking is Confirmed</h1>
<style>
body {
  background-color: rgb(192,192,192)
;
}
</style>

<body align="center">

<br><br>
<h2>Booking Details</h2><br><br>
Name:<b>
<%   
  
String name=(String)session.getAttribute("name");  
out.print(name);%></b> <br><br>
Flight from <b><%   
  
String s=(String)session.getAttribute("sour");  
out.print(s+" ");%> </b>
to <b><%   
  
String d=(String)session.getAttribute("dest");  
out.print(d+" ");%></b>
<br><br>
Number of Tickets Booked: <b><%   
  
String ticket=(String)session.getAttribute("tickets");  
out.print(ticket);%></b> <br><br>
Amount Paid:<b><% 
out.print(session.getAttribute("amount"));%></b> <br><br>
Flyway wishes you a very Happy Journey !!!!<br><br>
</body>
<img src="https://i.pinimg.com/236x/fb/8d/1a/fb8d1a7076c3c53edec90f141cd660d7.jpg" alt="Explore the World with us"  >

</html>