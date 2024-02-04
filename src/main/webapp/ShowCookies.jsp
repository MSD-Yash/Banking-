<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
        <h1>retriving data cookie.....</h1>
        <%
        Cookie c[]=request.getCookies();
        if(c!=null){
        	for(int i=0;i<c.length;i++){
        		out.println("<br>cookies name:"+c[i].getName());
        		out.println("<br>cookies value:"+c[i].getValue());
        		if(c[i].getValue().equals("news")){%>
        		<br>
        			<iframe width="560" height="315" src="https://www.youtube.com/embed/OOtxXPaQvoM?si=eG12IcMBsWecdMHX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        		<br>
        		<%}
if(c[i].getValue().equals("movie")){%>
<br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/eIfqvDGiPDg?si=_iW1u-ul8mkHPcj_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<br><%
        			
        		}if(c[i].getValue().equals("sport")){%>
        		<br>
        		<iframe width="560" height="315" src="https://www.youtube.com/embed/lmfiRo6zIc8?si=Sd9iQ5nOEOnnGypx" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        		<br>
        		<%
        			
        		}if(c[i].getValue().equals("comedy")){%>
        		<br>
        		<iframe width="560" height="315" src="https://www.youtube.com/embed/kvc9IDE5JOo?si=BOsawIRSp71X0WQc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        		<br>
        		<% 	
        		}
        		if(c[i].getValue().equals("music")){%>
        		<br>
        			<iframe width="560" height="315" src="https://www.youtube.com/embed/t7wSjy9Lv-o?si=s6jnOhH-kFPLyL2f" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        		<br>
        		<% }
        			
        		
        	}
        	
        	
        }
        else{
        	out.println("no cookies found");
        }
        %>
        <hr>
        <a href="index.jsp">
            Home</a>
    </div>


</body>
</html>