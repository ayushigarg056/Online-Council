<%@page import="java.util.*" %>

<% 
    Date d=new Date();
    String date=d.toString();
     %>
     <font color="red" size=4><%=date %></font>
<html>
<title>
</title><style type="text/css">
div#menu-position {
left:20;
position:absolute;
top:270px;
width:1200px;
margin-left: 120px;
}    

#mikemenu
{ margin: 0;
padding: 0;
z-index: 30}
#mikemenu li
{ margin: 0;
padding: 0;
list-style: none;
float: left;
font: bold 12px Arial}
#mikemenu li a
{ display: block;
margin: 0 1px 0 0;
padding: 8px 10px;
width: 110px;
background: #6355335;
color: #ffffff;
text-align: center;
text-decoration: none}
#mikemenu li a:hover
{ background: green;
color: #ffffff}
#mikemenu div
{ position: absolute;
visibility: hidden;
margin: 0;
padding: 0;
background: #4B91AA;
border: 1px solid #ffffff}
#mikemenu div a
{ position: relative;
display: block;
margin: 0;
padding: 15px 10px;
width: 220px;
white-space: nowrap;
text-align: left;
text-decoration: none;
background: #333399;
color: #FFFFFF;
font: 12px Arial}
#mikemenu div a:hover
{ background: #4B91AA;
color: cyan}
</style>
<div id="menu-position">
<ul id="mikemenu">


<li><a href=index.jsp onmouseover="mopen('m1')" onmouseout="mclosetime()">home </a>
<div id="m1"
onmouseover="mcancelclosetime()"
onmouseout="mclosetime()">
</div>
</li>


<li><a href=studentlogin.jsp onmouseover="mopen('m1')" onmouseout="mclosetime()">Students Records</a>
<div id="m1"
onmouseover="mcancelclosetime()"
onmouseout="mclosetime()">
</div>
</li>
<li><a href=institute.jsp onmouseover="mopen('m1')" onmouseout="mclosetime()">Institute records</a>
<div id="m1"
onmouseover="mcancelclosetime()"
onmouseout="mclosetime()">
</div>
</li>
<li><a href=councling.jsp onmouseover="mopen('m1')" onmouseout="mclosetime()">Counselling</a>
<div id="m1"
onmouseover="mcancelclosetime()"
onmouseout="mclosetime()">
</div>
</li>
<li><a href=enquiry.jsp onmouseover="mopen('m1')" onmouseout="mclosetime()">Enquiry</a>
<div id="m1"
onmouseover="mcancelclosetime()"
onmouseout="mclosetime()">
</div>
</li>


<li><a href=admin.jsp onmouseover="mopen('m1')" onmouseout="mclosetime()">Admin</a>
<div id="m1"
onmouseover="mcancelclosetime()"
onmouseout="mclosetime()">
</div>
</li>
<li><a href=about.jsp onmouseover="mopen('m1')" onmouseout="mclosetime()">About us</a>
<div id="m1"
onmouseover="mcancelclosetime()"
onmouseout="mclosetime()">
</div>
</li>
<li><a href=contact.jsp onmouseover="mopen('m1')" onmouseout="mclosetime()">Contact Us</a>
<div id="m1"
onmouseover="mcancelclosetime()"
onmouseout="mclosetime()">
</div>
</li>

  
</ul>
</div>


<body>

<img src="banner_counselling.jpg" width="1250" height="240" />
</body>
</html>