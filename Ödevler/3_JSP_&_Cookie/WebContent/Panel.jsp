<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hos Geldiniz!</title>
</head>

<% 
Cookie cookie = null;
Cookie[] cookies = null;
cookies = request.getCookies();

if(cookies != null){
	%><h1><%
    out.print("Hosgeldin " + cookies[2].getValue() + ";");
    %></h1><%
    
    %><h3><%
    out.print("Sisteme son giris tarihiniz: " + cookies[1].getValue());
    %></h3><%
    
    %><h3><%
    out.print("Sisteme en son " + cookies[3].getValue() + " gun once girdiniz.");
    %></h3><%
    
    %><h3><%
    out.print("Sisteme toplamda " + cookies[4].getValue() + " kez girdiniz.");
    %></h3><%
}
%>

<body style="background-color:#66ff66">
</body>
</html>

