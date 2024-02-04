<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body>
<%@page import="java.sql.*" %>
<div class="container">
<h1>USER REPORT</h1>
<TABLE class="table table-bordered table-hover">
<tr>
<th>userid
<th>usernm
<th>account no.
<th>mobile

</tr>
<%
Connection con;
Statement st;
ResultSet rs;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql:// bqpgwgr9a2z5wxnbvbe0-mysql.services.clever-cloud.com:3306/bqpgwgr9a2z5wxnbvbe0?user=uu49b3v04yy1ijpr&password=y8NAtwVHlnFZ0nROT5Qp");
    st=con.createStatement();
    rs=st.executeQuery("select * from user");
    while(rs.next()){
    	%>
    	<tr>
    	<td><%=rs.getString("userid") %>
    	<td><%=rs.getString("usernm") %>
    	<td><%=rs.getString("accno") %>
    	<td><%=rs.getString("mob") %>
    	</tr><%}
    	
    
    	
     
    
    con.close();
}
catch(Exception e){
	out.println(e);
}


%>












</TABLE>






</div>

</body>
</html>