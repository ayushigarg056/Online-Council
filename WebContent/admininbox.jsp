<%@ page language="java" import="java.util.*" session="true" pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>




<html>
<body>
<center><font size=8 color=RED>Welcome 
<%=
session.getAttribute("s1").toString()

 %>
</font><br>
<table width=100% height=10% ><tr><td><font size=5>name&nbsp&nbsp</font></td>&nbsp<td><font size=5>rollno&nbsp&nbsp</font></td><td><font size=5>rank&nbsp&nbsp</font></td><td><font size=5>fname&nbsp&nbsp</font></td><td><font size=5>address&nbsp&nbsp</font></td><td><font size=5>mobile&nbsp&nbsp</font></td><td>
<font size=5>email&nbsp&nbsp</font></td><td><font size=5>sex&nbsp&nbsp</font></td><td><font size=5>date&nbsp&nbsp</font></td><td><font size=5>month&nbsp&nbsp</font></td><td><font size=5>year&nbsp&nbsp</font></td><td><font size=5>course&nbsp&nbsp</font></td><td><font size=5>category&nbsp&nbsp</font></td><td>
<font size=5>occuption&nbsp&nbsp</font></td><td><font size=5>collegecode1&nbsp&nbsp</font></td><td><font size=5>collegecode2&nbsp&nbsp</font></td><td><font size=5>collegecode3&nbsp&nbsp</font></td>
</tr></font></table>
<center><font size=5 color=green>


<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
try
{

String roll_no=request.getParameter("roll_no");
//String rank=request.getParameter("rank");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=cn.createStatement();
//int x=st.executeUpdate("create table std98(eno number(10), sname varchar2(10))");
//int y=st.executeUpdate("insert into std98 values(1002,'shiv')");

ResultSet rs=st.executeQuery("select * from userreport3 where roll_no like '"+'%'+roll_no+'%'+"'");

while(rs.next())
{
out.println(rs.getString(1));out.println("&nbsp");
out.println(rs.getString(2));out.println("&nbsp");
out.println(rs.getString(3));out.println("&nbsp");
out.println(rs.getString(4));out.println("&nbsp");
out.println(rs.getString(5));out.println("&nbsp");
out.println(rs.getString(6));out.println("&nbsp");
out.println(rs.getString(7));out.println("&nbsp");
out.println(rs.getString(8));out.println("&nbsp");
out.println(rs.getString(9));out.println("&nbsp");
out.println(rs.getString(10));out.println("&nbsp");
out.println(rs.getString(11));out.println("&nbsp");
out.println(rs.getString(12));out.println("&nbsp");
out.println(rs.getString(13));out.println("&nbsp");
out.println(rs.getString(14));out.println("&nbsp");out.println("&nbsp");
out.println(rs.getString(15));out.println("&nbsp");out.println("&nbsp");
out.println(rs.getString(16));out.println("&nbsp");
out.println(rs.getString(17));out.println("&nbsp");

}
}

catch(Exception e)
{
out.println(e);
}
%>  

</font></center>
</body>
</body>