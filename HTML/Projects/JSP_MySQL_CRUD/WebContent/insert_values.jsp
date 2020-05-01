<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center>

<h1>Insert Values</h1>

<form action="controller/insert_controller.jsp">

Sl No :<input type="text" name="sl_no"><br>

User Name :<input type="text" name="user_name"><br>
Mobile:<input type="text" name="mobile"><br>
Email:<input type="text" name="email"><br>



<input type="submit" value="Insert">

</form>

<hr>


<%
Read_Values obj_Read_Values=new Read_Values();

List<User_Bean> list=obj_Read_Values.get_values(); 


Iterator<User_Bean> it_list=list.iterator();
%>
<table border="1">
<%
while(it_list.hasNext()){
	User_Bean obj_User_Bean=new User_Bean();
	obj_User_Bean=it_list.next();
	
	
%>
			<tr>	
					<td><%=obj_User_Bean.getSl_no() %></td>
					<td><%=obj_User_Bean.getUser_name() %></td>
					<td><%=obj_User_Bean.getEmail() %></td>
					<td><%=obj_User_Bean.getMobile() %></td>	
					
					<td>
					<a href="edit.jsp?sl_no=<%=obj_User_Bean.getSl_no()%>">Edit</a>
					
					</td>	
					<td>
					<a href="controller/delete_controller.jsp?sl_no=<%=obj_User_Bean.getSl_no()%>">Delete</a>
					
					</td>	
			</tr>
<%	 
}
%>
</table>


</center>

</body>
</html>