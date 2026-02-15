<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View user</title>
</head>
<body>
	<%
		String uname="root";
	    String pwd="";
	    String url="jdbc:mysql://localhost:3306/testdb";
	    String sql="select * from users";
	    
	    Connection con=DriverManager.getConnection(url,uname,pwd);
	    Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery(sql);
	    %>
	    <table border="1">
	    <tr>
	      <th>id</th>
	      <th>fname</th>
	      <th>lname</th>
	      <th>email</th>
	      <th>DOB</th>
	      <th colspan="2">Action</th>
	     </tr>
	     <%
	    while(rs.next()){
	    	 %>
	    	 <tr>
		   <td><%= rs.getInt("id") %></td>
		   <td><%= rs.getString("fname") %></td>
		   <td><%= rs.getString("lname") %></td>
		   <td><%= rs.getString("email") %></td>
		   <td><%= rs.getDate("dob") %></td>
		   <td><button>Update</button></td>
		   <td><button>Delete</button></td>
		   <td></td>
		 </tr>
	    	 
	    	 <%
	    }
	     %>
	      </table>	     
	 
	 
</body>
</html>