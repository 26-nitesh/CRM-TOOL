<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ include file="menu.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead List</title>
</head>
<body>
<a href="createlead">Create new Lead</a>
<h2 style="color:blue "align="center">List of Leads</h2>
<table border=1  align="center">
       <tr>
            <th>id</th>
           <th>First Name</th>
           <th>Last Name</th>
           <th>Lead Source</th>
           <th>Email</th>
           <th>Mobile</th>      
       </tr>
       <c:forEach items="${leads}" var="lead">
       <tr>
       <td  style="color:green">${lead.id}</td>
         <td><a href="getLeadById?id=${lead.id}">${lead.firstName}</a></td>
           <td style="color:green">${lead.lastName}</td>
          
            <td style="color:green">${lead.leadSource}</td>
              <td style="color:green">${lead.email}</td>
            <td style="color:green">${lead.mobile}</td>
       </tr>
       
       
       </c:forEach>
</table>
</body>
</html>