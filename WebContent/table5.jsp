<html>
<body>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
try
{
String roll_no=request.getParameter("roll_no");
String rank=request.getParameter("rank");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=cn.createStatement();
//int x=st.executeUpdate("create table std98(eno number(10), sname varchar2(10))");
//int y=st.executeUpdate("insert into std98 values(1002,'shiv')");

ResultSet rs=st.executeQuery("select * from userreport3 where roll_no like '"+'%'+roll_no+'%'+"'");
if(rs.next())
{
response.sendRedirect("admininbox.jsp");
//out.println("data found");
}

else
{
//int i= st.executeUpdate("insert into signup1 values('"+USER_ID+"','"+PASSWORD+"','"+NAME+"','"+fname+"','"+ADDRESS+"',"+date+","+year+","+year+","+mob+",'"+EMAIL+"','"+SEX+"')");
out.println("data not found");
}


cn.close();
}

catch(Exception e)
{
out.println(e);
}
%>  
</body>
</body>