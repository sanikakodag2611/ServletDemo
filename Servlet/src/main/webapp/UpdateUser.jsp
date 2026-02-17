<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int userId=Integer.parseInt(request.getParameter("id"));
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String email=request.getParameter("email");
	String dob=request.getParameter("dob");
	
	
%>

<form action="Update.jsp">
		Enter ID: <input type="number" name="id" readonly value="<%= userId %>">
		Enter your first name: <input type="text" name="fname" value="<%= fname %>">
		Enter your last name: <input type="text" name="lname" value="<%= lname %>">
		Enter your Email: <input type="email" name="email" value="<%= email %>">
		Enter your DOB: <input type="date" name="dob" value="<%= dob%>"> 
		<input type="submit" value="Update">
		 
		
	</form>
</body>
</html>