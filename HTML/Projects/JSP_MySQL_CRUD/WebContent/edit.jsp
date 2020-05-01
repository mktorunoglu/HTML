<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
	String sl_no=(String)request.getParameter("sl_no");
	
	
	Edit_values obj_Edit_values=new Edit_values();
	
	User_Bean obj_User_Bean=obj_Edit_values.get_value_of_user(sl_no);
	
	%>


<center>

<h1>Edit Values</h1>

<form action="controller/edit_controller.jsp">

Sl No :<input type="text" name="sl_no" value="<%=sl_no%>"><br>

User Name :<input type="text" name="user_name" value="<%=obj_User_Bean.getUser_name()%>"><br>
Mobile:<input type="text" name="mobile" value="<%=obj_User_Bean.getMobile()%>"><br>
Email:<input type="text" name="email" value="<%=obj_User_Bean.getEmail()%>"><br>



<input type="submit" value="Edit">

</form>
</center>

</body>
</html>