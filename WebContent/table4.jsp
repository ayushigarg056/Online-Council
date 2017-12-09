<html>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" session="false" %>



<%!
	String adminid=new String(" ");
	String pass=new String(" ");
	%>
	
	<%
		HttpSession session=request.getSession(true);
		adminid=request.getParameter("adminid");
		pass=request.getParameter("pass");
		session.setAttribute("s1",adminid);
		session.setAttribute("s2",pass);
	 %>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select * from admin1");
String adminid=request.getParameter("adminid");
String pass=request.getParameter("pass");
int flag=0;
while(rs.next())
{
if(adminid.equals(rs.getString(1))&&pass.equals(rs.getString(2)))
{
//out.println("welcome"+rs.getString(1));
flag=1;
response.sendRedirect("validadmin.jsp");
break;
}
}
if(flag==0)
{
response.sendRedirect("invalidadmin.jsp");
}
}
catch(Exception e)
{
}
%>   
</body>
</html>