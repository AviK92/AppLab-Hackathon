function validsignin()
{
	alert("yo");

	//store values from form
	var fname=document.signup.first_signup.value;
	var lname=document.signup.last_signup.value;
	var pwd=document.signup.password_signup.value;
	var email=document.signup.email_signup.value;
	var phone=document.signup.phone_signup.value;
	var city=document.signup.city_signup.value;
	//patterns
	var namepat = new RegExp(/^[a-zA-z]+$/);
	var phonepat = new RegExp(/^\d{10}$/);
	//email variables
	var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
	//name validation
	if (!(namepat.test(fname)))
	{
		alert("wrong");
		document.signup.first_signup.borderColor = "red";
		return false;
	}
	if (!(namepat.test(lname)))
	{
		document.signup.last_signup.borderColor = "red";
		return false;
	}
	//password validation
	if (pwd.length<4)
	{
		document.signup.password_signup.borderColor = "red";
		return false;
	}
	//email validation
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
	{
       document.signup.email_signup.borderColor = "red";
	   return false;
	}
	//phone validation
	if (!(phonepat.test(phone)))
	{
		document.signup.phone_signup.borderColor = "red";
		return false;
	}
}
function status(s)
{
	document.getElementById("navbutton2").style.backgroundColor = "#f1f1f1";
	document.getElementById("navbutton3").style.backgroundColor = "#f1f1f1";
	document.getElementById("navbutton4").style.backgroundColor = "#f1f1f1";
	document.getElementById("navbutton5").style.backgroundColor = "#f1f1f1";
	if(s==0)
	{
		if(document.getElementById("csp").selected)
		{
			document.getElementById("navbutton2").style.backgroundColor = "#2196F3";
			return;
		}
		if(document.getElementById("do").selected)
		{
			document.getElementById("navbutton3").style.backgroundColor = "#2196F3";
			return;
		}
		if(document.getElementById("eu").selected)
		{
			document.getElementById("navbutton4").style.backgroundColor = "#2196F3";
			return;
		}
		if(document.getElementById("au").selected)
		{
			document.getElementById("navbutton5").style.backgroundColor = "#2196F3";
			return;
		}
	}
	if(s==1)
	{	
		document.getElementById("csp").selected = "true";
		document.getElementById("navbutton2").style.backgroundColor = "#2196F3";
		return;
	}
	if(s==2)
	{	
		document.getElementById("do").selected = "true";
		document.getElementById("navbutton3").style.backgroundColor = "#2196F3";
		return;
	}
	if(s==3)
	{
		document.getElementById("eu").selected = "true";
		document.getElementById("navbutton4").style.backgroundColor = "#2196F3";
		return;
	}
	if(s==4)
	{
		document.getElementById("au").selected = "true";
		document.getElementById("navbutton5").style.backgroundColor = "#2196F3";
		return;
	}
	else
		alert("Error in index.js");
}

function showform(e)
{
	var i, formcontent, tablinks;

	// Get all elements with class="formcontent" and hide them
    formcontents = document.getElementsByClassName("formcontent");
    for (i = 0; i < formcontents.length; i++)
	{
        formcontents[i].style.display = "none";
    }
	
	// Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(e).style.display = "block";		
}

