function formValidation()
{
var uid = document.registration.userid;
var p1 = document.registration.p1;
var uname = document.registration.username;
var fname = document.registration.fname;
var uadd = document.registration.address;
var ucourse = document.registration.date;
var mob = document.registration.mob;
var uemail = document.registration.email;
var umsex = document.registration.msex;
var ufsex = document.registration.fsex;

if(userid_validation(uid,5,12))
{
if(p1_validation(p1,7,12))
{
if(allLetter(uname))
{
if(fname_validation(fname))
{
if(alphanumeric(uadd))
{
if(courseselect(ucourse))
{
if(mob_validation(mob))
{
if(ValidateEmail(uemail))
{
if(validsex(umsex,ufsex))
{
}
}
}

}
}
}
}
}
}
return false;

}

function userid_validation(uid,mx,my)
{
var uid_len = uid.value.length;
if (uid_len == 0 || uid_len >= my || uid_len < mx)
{
alert("User Id should not be empty / length be between "+mx+" to "+my);
uid.focus();
return false;
}
return true;
}


function p1_validation(p1,mx,my)
{
var p1_len = p1.value.length;
if (p1 == 0 ||p1_len >= my || p1_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
p1.focus();
return false;
}
return true;
}



function allLetter(uname)
{
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
uname.focus();

return true;
}
else
{
alert('Username must have alphabet characters only');
return false;
}
}



function fname_validation(fname)
{
var letters = /^[A-Za-z]+$/;
if(fname.value.match(letters))
{
return true;
}
else
{
alert('father name must have alphabet characters only');
fname.focus();
return false;
}
}

function alphanumeric(uadd)
{
var letters = /^[0-9a-zA-Z]+$/;
var numbers = /^[0-9]+$/;

if(uadd.value.match(letters)||uadd.value.match(numbers))
{
return true;
}
else
{
alert('User address must have alphanumeric characters only');
uadd.focus();
return false;
}
}
function courseselect(ucourse)
{
if(ucourse.value == "Default")
{
alert('Select your date from the list');
ucourse.focus();
return false;
}
else
{
return true;
}
}
function allnumeric(uzip)
{
var numbers = /^[0-9]+$/;
if(uzip.value.match(numbers))
{
return true;
}
else
{
alert('ZIP code must have numeric characters only');
uzip.focus();
return false;
}
}

function mob_validation(mob)
{
var numbers = /^[0-9]+$/;
if(mob.value.match(numbers))
{
return true;
}
else
{
alert('mobile number must have numeric characters only');
mob.focus();
return false;
}
}

function ValidateEmail(uemail)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
return false;
}
} function validsex(umsex,ufsex)
{
x=0;

if(umsex.checked)
{
x++;
}
if(ufsex.checked)
{
x++;
}

if (x==2)
{
alert('Both Male/Female are checked');
ufsex.checked=false
umsex.checked=false
umsex.focus();
return false;
}

if(x==0)
{
alert('Select Male/Female');
umsex.focus();
return false;
}
else
{
alert('Form Succesfully Submitted');
window.location.reload()
return true;
}
}