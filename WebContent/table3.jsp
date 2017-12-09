<html>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
try
{
//String name=request.getParameter("t1");
//String mob=request.getParameter("t2");
//String email=request.getParameter("t3");
//String city=request.getParameter("t4");
//String enquiry=request.getParameter("enquiry");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=cn.createStatement();
//int x=st.executeUpdate("create table login(User_id varchar2(10), Password varchar2(10),Name varchar2(10),Address varchar2(10),Country varchar2(10),Zipcode varchar2(10),Email varchar2(10),Sex varchar2(10),Language varchar2(10),About varchar2(50))");
st.executeUpdate("insert into userenquiry values('"+request.getParameter("t1")+"',"+request.getParameter("t2")+",'"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("enquiry")+"')"); 
	}
catch(Exception e)
{
out.println(e);
}
%>
<center>
<font size=8 bfcolor=red>
Your Qnuiry has been submitted successfully <br>
<a href=index.jsp> goto home
</a>
</font>
</center>
     
</body>
</html>