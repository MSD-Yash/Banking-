<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page  import="java.sql.*" %>

<%if(session.getAttribute("accno")!=null)
{

String uid=String.valueOf(session.getAttribute("userid"));
int ano=Integer.parseInt(session.getAttribute("accno").toString());
%>
Logged in as : <%=uid%> | Account Number : <%=ano%><br>
<%
Connection con;

PreparedStatement pst;
ResultSet rs;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql:// bqpgwgr9a2z5wxnbvbe0-mysql.services.clever-cloud.com:3306/bqpgwgr9a2z5wxnbvbe0?user=uu49b3v04yy1ijpr&password=y8NAtwVHlnFZ0nROT5Qp");
	pst=con.prepareStatement("select * from accounts where accno=? ");
	pst.setInt(1,ano);
	rs=pst.executeQuery()
;
	while(rs.next()){%>
	Balance:	<% out.println(rs.getString("balance"));%><br>
		type:<% out.println(rs.getString("acctype"));%><br>

		
	<% }
	con.close();
	
}
catch(Exception e){
	out.println(e);
}
}
else{
%>
<h1>invalid session</h1>
<br>
you are not authorised to excess the information,please login first
<%} %>

</body>
</html>