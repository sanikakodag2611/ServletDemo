<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert user</title>
</head>
<body>
   <%
   	 String uname="root";
     String pwd="";
     String url="jdbc:mysql://localhost:3306/testdb";
     
     Connection con=DriverManager.getConnection(url,uname,pwd);
    
      int id=Integer.parseInt(request.getParameter("id"));
      String fname=request.getParameter("fnm");
      String lname=request.getParameter("lnm");
      String email=request.getParameter("email");
      String dob=request.getParameter("dob");
      String pass=request.getParameter("pwd");
      
      PreparedStatement ps = con.prepareStatement(
    	        "INSERT INTO users (id,fname,lname,email,dob,password) VALUES (?,?,?,?,?,?)"
    	    );
      ps.setInt(1,id);
      ps.setString(2,fname);
      ps.setString(3,lname);
      ps.setString(4,email);
      ps.setString(5,dob);
      ps.setString(6,pass);
      
      int rowsAffected=ps.executeUpdate();
      
            
   %>
</body>
</html>