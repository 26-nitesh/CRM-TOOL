<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
</head>
<body>
<form action="genrate">
<pre>
First Name  :<input type="text" name="firstName" value="${contact.firstName}">
Last Name   :<input type="text" name="lastName" value="${contact.lastName}">
email       :<input type="text" name="email" value="${contact.email}">
Mobile      :<input type="text" name="mobile" value="${contact.mobile}">
Product Name:<input type="text" name="productName">
Amount Paid :<input type="text" name="amountPaid">
                                        <input type="submit" value="Genrate bill"></pre>
</form>

</body>
</html>