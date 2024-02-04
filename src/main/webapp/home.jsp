<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/e0e02f3ff6.js" crossorigin="anonymous"></script>
 <script src="https://kit.fontawesome.com/e0e02f3ff6.js" crossorigin="anonymous"></script>
    
<style>
body{

background-image:url("image/back.jpg") ;
background-size:cover;
padding:3%;
}
.continer{

}
.continer h1{
border-bottom:2px solid red;
font-size:60px;
}
.bx1{
background-color: skyblue;
border-radius:40px;
 position: absolute;
       top: 40%;
       left:3%;
       border-radius:90px;
       background-colour:skyblue;
}
.bx1 i{
    position: absolute;
    top: 20%;
    left: 40%;
}
.bx2{
 position: absolute;
       top: 40%;
       left: 13%;
       
       background-color: skyblue;
       
       border-radius: 50px;}
 .bx2 i{
 
 position: absolute;
 top:20%;
 left:40%;
 }
  .yash{
   size:180px;
 position: absolute;
    top:10%;
    left:90%;
    font-size:20px;
    
    background-color:white;
     border-radius:7px ;
    border: solid black;

} .yash i{
position: absolute;
    top:4%;
    left:40%;
 
}   
.car{position: absolute;
    top:60%;
    left:4%;
    background-color: white;
      padding: 1%;
      border-radius: 30%;
      border: 2px black solid;

}




</style>
<meta charset="ISO-8859-1">
<title>home</title>

</head>


<body>
<div class="continer">
<br>
 <h1>welcome to my bank  </h1><br>
 <div>
<box class="yash"> 
 
 <a href="logout.jsp"><i class="fa-solid fa-right-from-bracket"></i><br>log out</a>
 </box>
 </div>
 
 <br>
<%
String uid=String.valueOf(session.getAttribute("userid"));
String ano=String.valueOf(session.getAttribute("accno"));
%>
Logged in as : <%=uid%> | Account Number : <%=ano%>|
 Session id <% out.println(session.getId()); %>



<box class="bx1">



<a href="transfer.html"><i class="fa-solid fa-money-bill-transfer"></i><br>
<p>Transfer money</p></a>

</box>
<box class="bx">



</box>
<box class="bx2">

<a href="checkbalance.jsp"><i class="fa-solid fa-building-columns"></i><br><p>check balance</p></a><br>

<

</box>

<div class="c">
<box class="car">
        <table>
            <tr>
                <td>
        <a href="ShowModels.jsp?brand=BMW"><img src="image/bmw.jpeg" width="100px" ></a>
    </td>
    <td>
        <a href="ShowModels.jspbrand=Honda"><img src="image/honda.png?" width="100px"></a>
        </td>
        <td>
        <a href="ShowModels.jsp?brand=Hyundai"><img src="image/hyundai.png" width="100px"></a>
        </td>
        <td><a href="ShowModels.jsp?brand=Maruti suzuki"><img src="image/maruti.png" width="100px"></a>
        </td>
        <td>
            <a href="ShowModels.jsp?brand=Skoda"><img src="image/skodsa.png" width="100px"></a>
        
        </td>
        <td> <a href="ShowModels.jspbrand=Toyota"><img src="image/toyota.jpeg" width="100px"></a>
        </td>
        <td><a href="ShowModels.jsp?brand=Tata"><img src="image/tata.png?" width="100px"></a>
        </td>
        <td><a href="ShowModels.jsp?brand=Volkswagen"><img src="image/volkswagen.jpg" width="100px"></a>
        </td>
        
    
        
        
    </tr>
    </table>
    </box>


</div>
 








    </div>

</body>
</html>