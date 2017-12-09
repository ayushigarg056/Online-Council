<html>
<body bgcolor=ffffff>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
try
{
String name=request.getParameter("name");
String rollno=request.getParameter("rollno");
String rank=request.getParameter("rank");
String fname=request.getParameter("fname");
String address=request.getParameter("address");
String mob=request.getParameter("mob");
String email=request.getParameter("email");
String sex=request.getParameter("sex");
String date=request.getParameter("date");
String month=request.getParameter("month");
String year=request.getParameter("year");
String course=request.getParameter("course");
String category=request.getParameter("category");
String occuption=request.getParameter("occuption");
String collegecode1=request.getParameter("collegecode1");
String collegecode2=request.getParameter("collegecode2");
String collegecode3=request.getParameter("collegecode3");






Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=cn.createStatement();
//int x=st.executeUpdate("create table login(User_id varchar2(10), Password varchar2(10),Name varchar2(10),Address varchar2(10),Country varchar2(10),Zipcode varchar2(10),Email varchar2(10),Sex varchar2(10),Language varchar2(10),About varchar2(50))");
st.executeUpdate("insert into userreport3 values('"+name+"','"+rollno+"','"+rank+"','"+fname+"','"+address+"','"+mob+"','"+email+"','"+sex+"','"+date+"','"+month+"','"+year+"','"+course+"','"+category+"','"+occuption+"','"+collegecode1+"','"+collegecode2+"','"+collegecode3+"')");
}
catch(Exception e)
{
out.println(e);
}
%>  
<center>
<font size=8 color=red>

<br>
your record has save 
<a href=index.jsp> GOTO HOME</a>
</font>
</center>
</body>
</html>