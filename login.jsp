<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
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
String type=request.getParameter("type_login");
String username=request.getParameter("user_login");
String password=request.getParameter("password_login");
if(type=="")
{
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from reg where username='"+username+"'"); 
	if(rs.next()) 
	{ 
		if(rs.getString(3).equals(password)) 
		{%>
			<script type="text/javascript">
			alert("Login Successful");
			//window.location="";
			</script>
		<%} 
		else 
		{%>
			<script type="text/javascript">
			alert("Wrong password");
			window.location="test.html";
			</script>
		<%} 
	} 
	else 
	{%>
		<script type="text/javascript">
		alert("Username does not exist");
		window.location="test.html";
		</script>
	<%}
	
	}catch(Exception e){e.printStackTrace();}
}
else if(type=="")
{
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from reg where username='"+username+"'"); 
	if(rs.next()) 
	{ 
		if(rs.getString(3).equals(password)) 
		{%>
			<script type="text/javascript">
			alert("Login Successful");
			//window.location="";
			</script>
		<%} 
		else 
		{%>
			<script type="text/javascript">
			alert("Wrong password");
			window.location="test.html";
			</script>
		<%} 
	} 
	else 
	{%>
		<script type="text/javascript">
		alert("Username does not exist");
		window.location="test.html";
		</script>
	<%}
	
	}catch(Exception e){e.printStackTrace();}
}
else if(type=="")
{
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from reg where username='"+username+"'"); 
	if(rs.next()) 
	{ 
		if(rs.getString(3).equals(password)) 
		{%>
			<script type="text/javascript">
			alert("Login Successful");
			//window.location="";
			</script>
		<%} 
		else 
		{%>
			<script type="text/javascript">
			alert("Wrong password");
			window.location="test.html";
			</script>
		<%} 
	} 
	else 
	{%>
		<script type="text/javascript">
		alert("Username does not exist");
		window.location="test.html";
		</script>
	<%}
	
	}catch(Exception e){e.printStackTrace();}
}
else if(type=="")
{
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from reg where username='"+username+"'"); 
	if(rs.next()) 
	{ 
		if(rs.getString(3).equals(password)) 
		{%>
			<script type="text/javascript">
			alert("Login Successful");
			//window.location="";
			</script>
		<%} 
		else 
		{%>
			<script type="text/javascript">
			alert("Wrong password");
			window.location="test.html";
			</script>
		<%} 
	} 
	else 
	{%>
		<script type="text/javascript">
		alert("Username does not exist");
		window.location="test.html";
		</script>
	<%}
	
	}catch(Exception e){e.printStackTrace();}
}
else {}
%>
</body>
</html>