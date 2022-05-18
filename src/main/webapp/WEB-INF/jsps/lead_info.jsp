<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Info</title>
</head>
<body>

<h2>Lead Details...........</h2>
<pre>
First Name  : ${lead.firstName}
Last Name   : ${lead.lastName}
Email       : ${lead.email}
Lead Source : ${lead.leadSource}
Mobile      : ${lead.mobile}
</pre>
<form action="compose" method="post">
<input type="hidden" name="emailId" value="${lead.email}">
<input type="submit" value="Email">
</form>
<form action="convertLeadById">
<input type="hidden" name="id" value="${lead.id}">
<input type="submit" value="convert">

</form>
</body>
</html>