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
<table width="60%" height="80%">

<form name=form1 method=post action=table2.jsp>
<font size=6 color=red>Enter your Details for Reporting:-</font>

<tr><td>Name:</td><td><input name="name" type="text"></td></tr>
<tr><td>Roll No:</td><td><input name="rollno" type="text"></td></tr>
<tr><td>GBTU rank:</td><td><input name="rank" type="text"></td></tr>
<tr><td>Father name:</td><td><input name="fname" type="text"></td></tr>
<tr><td>Enter address:</td><td><input name="address" type="text"></td></tr>
<tr><td>Mobile No:</td><td><input name="mob" type="text"></td></tr>
<tr><td>Enter email:</td><td><input name="email" type="text"></td></tr>
<tr><td>Enter Gender</td><td><input type="radio" name="sex" value="Male"  checked /><span>Male</span>
<input type="radio" name="sex" value="Female" /><span>Female</span></td></tr>


<tr><td>Date of birth
</td><td>    <select name=date>
	  <option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>2
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
<option>11</option>
<option>12</option>
<option>13</option>
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
<option>21</option>
<option>22</option>
<option>23</option>
<option>24</option>
<option>25</option>
<option>26</option>
<option>27</option>
<option>28</option>
<option>29</option>
<option>30</option>
<option>31</option>
  </select>
  <select name=month>
<option>jan</option>
<option>feb</option>
<option>mar</option>
<option>apr</option>
<option>may</option>
<option>jun</option>
<option>jul</option>
<option>aug</option>
<option>sept</option>
<option>oct</option>
<option>nov</option>
<option>dec</option>
      </select>
  <select name=year>
    <option>1990</option>
    <option>1991</option>
     <option>1992</option>
     <option>1993</option>
     <option>1994</option>
    <option>1995</option>
    <option>1996</option>
    <option>1997</option>
<option>1998</option>
<option>1999</option>
<option>2000</option>
<option>2001</option>
<option>2002</option>
<option>2003</option>
<option>2004</option>
<option>2005</option>
</select>
</td></tr>

<tr><td>Select Course</td><td><select name=course>
<option>B.Tech</option><option>M.Tech</option><option>MBA</option><option>MCA</option>
<option>BBA</option><option>BCA</option>
</select></td></tr>

<tr><td>Select Catgory</td><td>
<select name=category>
	  <option>Other</option>
<option>GEN</option><option>OBC</option><option>SC/SC</option>
</select></td></tr>

<tr><td>Father occupation </td><td>
<select name=occuption>
	  <option>Other</option>
<option>Private job</option><option>Gov. job</option><option>Shopkeeper</option><option>business</option>
</select></td></tr>

<tr><td>Enter college code(min 1)</td>
<td><input name="collegecode1" type="text"></td>
<td><input name="collegecode2" type="text"></td>
<td><input name="collegecode3" type="text"></td>
</tr>
<tr><td></td><td>
<input type="submit" value="submit your record">
</td>
</tr>
</table>
</center>
</body>
</html>

