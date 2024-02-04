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
if(session.getAttribute("accno")!=null){
	int act,at;
	String psw;
	
	String uid=String.valueOf(session.getAttribute("userid"));
	int ano=Integer.parseInt(session.getAttribute("accno").toString());
	

act=Integer.parseInt(request.getParameter("anm"));
at=Integer.parseInt(request.getParameter("amt"));
psw=request.getParameter("psw");
Connection con;
PreparedStatement ps,pst,pt;
ResultSet rs;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	con=DriverManager.getConnection("jdbc:mysql:// bqpgwgr9a2z5wxnbvbe0-mysql.services.clever-cloud.com:3306/bqpgwgr9a2z5wxnbvbe0?user=uu49b3v04yy1ijpr&password=y8NAtwVHlnFZ0nROT5Qp");
    
	
	ps=con.prepareStatement("select * from user where accno=? and password=?");
	ps.setInt(1, ano);
	
    ps.setString(2, psw);
	rs=ps.executeQuery();
	if(rs!=null) {
		pst=con.prepareStatement("update accounts set balance=balance-? where accno=? ");
        pt=con.prepareStatement("update accounts set balance=balance+? where accno=? ");
		pst.setInt(1, at);
		pst.setInt(2, ano);
		pt.setInt(1, at);
		pt.setInt(2, act);
		pst.executeUpdate();
		pt.executeUpdate();
	out.println("done");
		
	}
	
}
catch(Exception e) {
	System.out.println(e);
	
}
}




%>

</body>
</html>