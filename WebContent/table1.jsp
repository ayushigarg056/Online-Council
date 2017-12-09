<html>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" session="false" %>



<%!
	String user_id=new String(" ");
	String password=new String(" ");
	%>
	
	<%
		HttpSession session=request.getSession(true);
		user_id=request.getParameter("user_id");
		password=request.getParameter("password");
		session.setAttribute("s1",user_id);
		session.setAttribute("s2",password);
	 %>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("select * from signup1");
String uname=request.getParameter("user_id");
String upass=request.getParameter("password");
int flag=0;
while(rs.next())
{
if(uname.equals(rs.getString(1))&&upass.equals(rs.getString(2)))
{
//out.println("welcome"+rs.getString(1));
flag=1;
response.sendRedirect("afterlogin.jsp");
break;
}
}
if(flag==0)
{
response.sendRedirect("invaliduser.jsp");
}
}
catch(Exception e)
{
}
%>   
</body>
</html>