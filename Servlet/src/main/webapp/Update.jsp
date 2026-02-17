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
     
     Connection con=DriverManager.getConnection(url,uname,pwd);
    
      int id=Integer.parseInt(request.getParameter("id"));
      String fname=request.getParameter("fname");
      String lname=request.getParameter("lname");
      String email=request.getParameter("email");
      String dob=request.getParameter("dob"); 
      
      Statement st = con.createStatement();
      String sql="update users set fname='"+fname+"', lname='"+lname+"', email='"+email+"', dob='"+dob+"' where id="+id;

       	   
            
      int rowsAffected=st.executeUpdate(sql);
      if(rowsAffected>=1){
    	 	  out.println("User updated successfully");
          response.sendRedirect("ViewUser.jsp");     
      }
     
   %>
</body>
</html>