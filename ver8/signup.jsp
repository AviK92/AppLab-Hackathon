<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
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
String type=request.getParameter("type_signup");
String fname=request.getParameter("first_signup");
String lname=request.getParameter("last_signup");
String pwd=request.getParameter("password_signup");
String email=request.getParameter("email_signup");
String phone=request.getParameter("phone_signup");
String city=request.getParameter("city_signup");
if(type=="")
{
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
	PreparedStatement pst=con.prepareStatement("insert into reg values(?,?,?,?,?,?,?)");
	pst.setInt(1, 0);
	pst.setString(2, first_signup);
	pst.setString(3, last_signup);
	pst.setString(4, password_signup`);
	pst.setString(5, email_signup);
	pst.setString(6, phone_signup);
	pst.setString(7, city_signup);
	int n=pst.executeUpdate();
	if(n>0)
	{%>
	<script type="text/javascript">
	alert("Registration Successful");
	window.location="test.html";
	</script>
	<%}
	}catch(Exception e){e.printStackTrace();}
}
else if(type=="")
{
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
	PreparedStatement pst=con.prepareStatement("insert into reg values(?,?,?,?,?,?,?)");
	pst.setInt(1, 0);
	pst.setString(2, first_signup);
	pst.setString(3, last_signup);
	pst.setString(4, password_signup`);
	pst.setString(5, email_signup);
	pst.setString(6, phone_signup);
	pst.setString(7, city_signup);
	int n=pst.executeUpdate();
	if(n>0)
	{%>
	<script type="text/javascript">
	alert("Registration Successful");
	window.location="test.html";
	</script>
	<%}
	}catch(Exception e){e.printStackTrace();}
}
else if(type=="")
{
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
	PreparedStatement pst=con.prepareStatement("insert into reg values(?,?,?,?,?,?,?)");
	pst.setInt(1, 0);
	pst.setString(2, first_signup);
	pst.setString(3, last_signup);
	pst.setString(4, password_signup`);
	pst.setString(5, email_signup);
	pst.setString(6, phone_signup);
	pst.setString(7, city_signup);
	int n=pst.executeUpdate();
	if(n>0)
	{%>
	<script type="text/javascript">
	alert("Registration Successful");
	window.location="test.html";
	</script>
	<%}
	}catch(Exception e){e.printStackTrace();}
}
else if(type=="")
{
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
	PreparedStatement pst=con.prepareStatement("insert into reg values(?,?,?,?,?,?,?)");
	pst.setInt(1, 0);
	pst.setString(2, first_signup);
	pst.setString(3, last_signup);
	pst.setString(4, password_signup`);
	pst.setString(5, email_signup);
	pst.setString(6, phone_signup);
	pst.setString(7, city_signup);
	int n=pst.executeUpdate();
	if(n>0)
	{%>
	<script type="text/javascript">
	alert("Registration Successful");
	window.location="test.html";
	</script>
	<%}
	}catch(Exception e){e.printStackTrace();}
}
else {}
%>
</body>
</html>