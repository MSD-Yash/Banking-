<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://kit.fontawesome.com/e0e02f3ff6.js" crossorigin="anonymous"></script>
   <style>
body{
    background: url("image/logback.jpg") no-repeat center center fixed;
    background-size: cover;

}
.container{
           padding: 3%;
    position: absolute;
    top: 15%;
    left: 35%;
    border-radius:100px ;
    
    
    
    backdrop-filter:blur(90px);
}
.container a{
color: white;
        left:40%;
        
}
.container h1{
    
    font-size: 40px;
    border-bottom: solid black;
    margin-bottom: 30px;
    padding: 12px;
    background: none;
}
.box{
    font-style: color=black;
    width: 100%;
    font-size: 20px;
    background: none;
    color: black;
    outline: none;
    border: none;
    
    
    
}
.box input{
    font-style: color=black;
  
    font-size: 20px;
    width: 70%;
    margin:2px 0px;
    border:none;
    background: none;
    outline: none;
    color: black;

    
}
.box i{
    width: 20px;
    left: 5px;
    
}
.btn{
    cursor: pointer;
    outline: none;
    padding: 6px;
    width: 25%;
    margin: 12px 0;
    border-radius: 15px;
    position: absolute;
    left:35%;
    
    background-color: white;
    font-style: color=black;
}

}
   </style>
    <title>login</title>
    <link rel="style" herf="style">
    
</head>
<body>
<%@page import="java.util.Calendar" %>
<form action="check" method="post">
    <div class="container">
   <%  Calendar cal=Calendar.getInstance(); 
	%>
	<%=cal.getTime() %>
    <h1> login to  SBI Bank </h1>
    
    <div class="box">
        
<i class="fa-regular fa-user"></i>
        <input type="USERID" name="uid" required autocomplete="off" placeholder="Enter Your USERID">
    </div>
    <br>
    <div class="box">
        <i class="fa-solid fa-key"></i>
        <input type="password"  name="psw" required autocomplete="off" placeholder="Enter Your password"   >
    </div>
    <br>
    <button class="btn"> SING IN </button>
    <br>
    <br>
    <a href="registor.html">new user?register now</a>
    <br>
    
    
      
     
      <a href="reportUser.jsp">user Report</a>
    <br>
    <a href="DataForCookies.html">Data For Cookies</a>
    |
    <a href="ShowCookies.jsp">show cookies</a>
    </div>
</form>

   


    
    
</body>
</html>