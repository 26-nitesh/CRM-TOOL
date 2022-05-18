<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
</head>
<body>
<pre>
First Name :${bill.firstName}
last Name   :${bill.lastName}
email       :${bill.email}
mobile      :${bill.mobile}
Product Name:${bill.productName}
First Name  :${bill.amountPaid}
</pre>
<input type="button" onclick="window.print()" value="print">
<form action="compose" method="post">
<input type="hidden" name="emailId" value="${bill.email}">
<input type="submit" value="Email">
</form>
</body>
</html>