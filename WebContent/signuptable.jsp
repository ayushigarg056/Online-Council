<html>
<body bgcolor=ffffff>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
try
{
String USER_ID=request.getParameter("userid");
String PASSWORD=request.getParameter("p1");
String NAME=request.getParameter("username");
String fname=request.getParameter("fname");
String ADDRESS=request.getParameter("address");
String date=request.getParameter("date");
String month=request.getParameter("month");
String year=request.getParameter("year");
String mob=request.getParameter("mob");
String EMAIL=request.getParameter("email");
String SEX=request.getParameter("sex");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select USER_ID from signup1 where USER_ID like '"+'%'+USER_ID+'%'+"'");
if(rs.next())
{
response.sendRedirect("userexist.jsp");
}
else
{
int i= st.executeUpdate("insert into signup1 values('"+USER_ID+"','"+PASSWORD+"','"+NAME+"','"+fname+"','"+ADDRESS+"',"+date+","+year+","+year+","+mob+",'"+EMAIL+"','"+SEX+"')");
}
st.close();
cn.close();
}
catch(Exception e)
{
out.println(e);
}
%>  
<center>
<font size=6 color=green>

your registration is complete<br>
<a href=index.jsp> go to home</a>
</font>
</center>
</body>
</html>