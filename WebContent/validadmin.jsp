<%@ page language="java" import="java.util.*" session="true" pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>



<html>
<head>
<title> home
</title>
<jsp:include page="hed1.jsp" />
</head>
<body bgcolor=#00FA9A><br><br><br>

<center><font size=8 color=RED>Welcome
<%=
session.getAttribute("s1").toString()

 %>
<center>
<table width="40%" height="30%">
<tr><td>    <font size=4 color=blue>Enter student Roll Number for details</font></td></tr>
   <form name=n1 action=admininbox.jsp method=post> 
   <tr><td>Enter roll no</td>
<td>    <input type="text" name="roll_no"></td></tr>

 
 <tr><td></td>   <td><input type="submit" value=search></form></td></tr>

<tr><td></td>   <td></table> </th>
</table>
</center>
</body>
</html>

