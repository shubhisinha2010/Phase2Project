<html><head>
<title>Payment Gateway</title>
<style>
body {
  background-color: rgb(192,192,192)
;
}
</style>

<h1>Welcome to Payment Gateway</h1>
<h2>Complete your Payment by selecting the payment source and filling the details</h2>
<%   
  
String name=request.getParameter("firstName")+" "+request.getParameter("lastName");    
session.setAttribute("name",name);  
String tickets=request.getParameter("ticket");    
session.setAttribute("tickets",tickets); %>
</head>
<body align="center">
<form action="booking-confirmation.jsp">

Card Number: <input type="number" name= "cardnum">
<br><br>
CVV Number: <input type="password" name="cvv">
<br><br>
PIN: <input type="password" name="pin">
<br><br>
<body>

Amount:<% int amt=Integer.parseInt(request.getParameter("ticket"))*15000;
out.println(amt);
session.setAttribute("amount", amt); %>
</body>
<br><br>
<input type="submit" value="Pay Now">
</form>
</body>
</html>