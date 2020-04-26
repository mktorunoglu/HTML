<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
     <%@ page import="java.text.SimpleDateFormat" %>
     <%@ page import="java.util.concurrent.TimeUnit" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

<%!int counter = 0;   // Sayfaya kaç kez erişildiğini sayan sayaç %>   
<%!String uname, pass; %>
<% uname = request.getParameter("userName");
   pass = request.getParameter("password");
   if(uname.equals("omu") && pass.equals("123")){   // Doğru giriş koşulu
	   Cookie[] cookies = null;
	   Cookie cookie = null;
       cookies = request.getCookies();
       
       if(cookies != null){
    	   for(int i = 0; i < cookies.length; i++){
    		   cookie = cookies[i];
    		   
    	       if(cookie.getName().equals("LastLogin") == false){   // Son giriş tarihini gösteren cookie
    	    	   Cookie lastLogin = new Cookie("LastLogin", new SimpleDateFormat("MM/dd/yyyy").format(new Date()));
    	    	   response.addCookie(lastLogin);
    	    	   
    	       }else{
    	    	   SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);   // Son giriş tarihinden kaç gün sonra sisteme girildiğini gösteren cookie
    	    	   Date firstDate = sdf.parse(cookie.getValue());
    	    	   Date secondDate = sdf.parse(new SimpleDateFormat("MM/dd/yyyy").format(new Date()));
    	    	   long diffInMillies = Math.abs(secondDate.getTime() - firstDate.getTime());
    	    	   long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
    	    	   Cookie lastLoginDay = new Cookie("LastLoginDay", Long.toString(diff, 10));
    	    	   response.addCookie(lastLoginDay);
    	      }
    	 }
    }
       
	counter++;
	Cookie loginCounter = new Cookie("LoginCounter", Integer.toString(counter)); 
	Cookie username = new Cookie("userName", uname);
    response.addCookie(loginCounter);
    response.addCookie(username);
	%>
     <jsp:forward page= "Panel.jsp"/>
	<%
	}else{   // Hatalı giriş koşulu
	%>
    <jsp:forward page= "Error.jsp"/>    
	<%
	}
%>

</body>
</html>

