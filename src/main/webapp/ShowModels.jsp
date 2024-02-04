<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body style="margin-top:40px">
<div class="container">
<%
String comp=request.getParameter("brand");
String coun=request.getParameter("country");
%>


<h1 class="display-4"><%=comp%> Models List</h1>
Country :<%=coun%>
<hr>

<table class="table table-bordered">
<tr>
<th>ModelID
<th>Model Name
<th>Price
</tr>

<%
Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://bvtzpajcieav1rbhaza2-mysql.services.clever-cloud.com:3306/bvtzpajcieav1rbhaza2?user=u7ptalsi27bkc2nd&password=KhghuYckjM6CsNhqBGJn");
	pst=con.prepareStatement("select * from products where company=?");
	pst.setString(1,comp);
	rs=pst.executeQuery();
	
	while(rs.next())
	{
		%>
		
		<tr>
		<td><%=rs.getString("prodid") %>
		<td><%=rs.getString("prodnm") %>
		<td><%=rs.getString("price") %>
		</tr>
		
		<%
	}
	
	
	con.close();
	
}
catch(Exception e)
{
	out.println(e);
}

%>


</table>

<br>
<a href="home.jsp">Home</a>
</div>

</body>
</html>