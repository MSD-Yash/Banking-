<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String no=request.getParameter("userid");

Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql:// bqpgwgr9a2z5wxnbvbe0-mysql.services.clever-cloud.com:3306/bqpgwgr9a2z5wxnbvbe0?user=uu49b3v04yy1ijpr&password=y8NAtwVHlnFZ0nROT5Qp");
    
	pst=con.prepareStatement("select * from user where userid=?");
	pst.setString(1,no);
	rs=pst.executeQuery();
	if(rs.next())
	{
		%>
		<span style="color:red">Sorry!!! Account Number Not available</span>
		<%
	}
	else
	{
		%>
		<span style="color:green">Congrats!!! Available for use</span>
		<%
	}
	con.close();
}
catch(Exception e)
{
	out.println("server down");
}

%>


</body>
</html>