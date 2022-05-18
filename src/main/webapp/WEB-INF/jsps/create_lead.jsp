<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create New Lead</title>
</head>
<body>
<h2>Create | New Lead</h2>
<form action="saveLead" method="post">
<pre>
First Name :<input type="text" name="firstName">
Last Name  :<input type="text" name="lastName">
email      :<input type="text" name="email">
Lead Source:<select name="leadSource">
            <option value="select">select</option>
            <option value="newsPaper">News Paper</option>
            <option value="internet">Internet</option>
            <option value="television">Television</option> 
            <option value="radio">Radio</option>  
            </select>
Mobile     :<input type="text" name="mobile">
                                        <input type="submit" value="save Lead">
</pre></form>

</body>
</html>