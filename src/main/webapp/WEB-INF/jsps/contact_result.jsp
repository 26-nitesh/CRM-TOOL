<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ include file="menu.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact List</title>
</head>
<body>
<h2 style="color:blue "align="center">List of Contacts</h2>
<table border=1  align="center">
       <tr>
            <th>id</th>
           <th>First Name</th>
           <th>Last Name</th>
           <th>Lead Source</th>
           <th>Email</th>
           <th>Mobile</th>   
             <th>Billing</th>
       </tr>
       <c:forEach items="${contacts}" var="contact">
       <tr>
       <td  style="color:green">${contact.id}</td>
         <td style="color:green">${contact.firstName}</td>
           <td style="color:green">${contact.lastName}</td>
           <td style="color:green">${contact.leadSource}</td>
            <td style="color:green">${contact.email}</td>
              <td style="color:green">${contact.mobile}</td>
              <td><a href="getContactById?id=${contact.id}">Genrate Bill</a></td>
       </tr>
       
       
       </c:forEach>
</table>
</body>
</html>