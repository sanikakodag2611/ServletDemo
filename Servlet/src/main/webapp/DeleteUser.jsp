<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String uname="root";
	String pwd="";
	String url="jdbc:mysql://localhost:3306/testdb";
	
	int userId=Integer.parseInt(request.getParameter("id"));
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String email=request.getParameter("email");
	String dob=request.getParameter("dob");
	
	String sql="delete from users where id='"+userId+"'";
	
	Connection con=DriverManager.getConnection(url,uname,pwd);
	
	Statement st=con.createStatement();
	int result=st.executeUpdate(sql);
		
	if(result>=1){
		response.sendRedirect("ViewUser.jsp");
	}
	
%>

</body>
</html>