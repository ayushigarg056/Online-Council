<html><head>
<title>registration form</title>
<link rel='stylesheet' href='js-form-validation.css' type='text/css' />
<script src="sample-registration-form-validation.js"></script>
</head>
<body onLoad="document.registration.userid.focus();" bgcolor=#3399FF>
<center><font size=6 color=red>userid already exit try another</font></center>
<h1>Registration Form</h1>
<form name='registration' action=signuptable.jsp onSubmit="return formValidation();">
<ul>
<li><label for="userid">User id:</label></li>
<li><input type="text" name="userid" size="12" /></li>

<li><label for="passid">Password:</label></li>
<li><input type="password" name="p1" size="12" /></li>

<li><label for="username">Name:</label></li>
<li><input type="text" name="username" size="25" /></li><br>

<li><label for="fname">Father name</label></li>
<li><input type="text" name="fname" size="18" /></li>

<li><label for="address">Address:</label></li>
<li><input type="text" name="address" size="50" /></li>

<li><label for="dob">Date of Birth</label></li>
<li><select name="date">
<option selected="" value="Default">(Please select a dob)</option>
<option>date</option>
<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option>
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
    <option>month</option>
<option>jan</option><option>feb</option><option>mar</option>
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
    <option>year</option><option>1994</option><option>1995</option><option>1996</option>
<option>1997</option>
<option>1998</option>
<option>1999</option>
<option>2000</option>
<option>2001</option>
<option>2002</option>
<option>2003</option>
<option>2004</option>
<option>2005</option>
<option>2006</option>
<option>2007</option>
<option>2008</option>
  </select>
</li>


<li><label for="mob">Mobile no.</label></li>
<li><input type="text" maxlength=10  name="mob" /></li>

<li><label for="email">Email:</label></li>
<li><input type="text" name="email" size="50" /></li>
<li><label id="gender">Sex:</label></li>
<li><input type="radio" name="sex" value="Male"  checked /><span>Male</span></li>
<li><input type="radio" name="sex" value="Female" /><span>Female</span></li>

<li><input type="submit" name="submit" value="Submit" /></li>
</ul>
</form>
</body>
</html>
