<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Data store in Cookies</h1>
<div class="continer">
<%
String cho=request.getParameter("choice");
Cookie c=new Cookie("userpref",cho);//user ki choice userpref me dal do that is cho store in userpref
//c.setMaxAge(100);
response.addCookie(c);
%>

<a href="index.jsp">home</a>

</div>

</body>
</html>