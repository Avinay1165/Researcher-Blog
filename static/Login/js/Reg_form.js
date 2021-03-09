function formvalidation()
{
	var uid=document.getElementById("username");
	var upassid=document.getElementById("passid");
	var confirm_pass=document.getElementById("Confirmpass");
	var uemail=document.getElementById("email");
	if(passid_validation(upassid,20))
	{
		if(userid_validation(uid,20))
		{
			if(confirmpass_validation(confirm_pass, 20, upassid))
			{
				if(ValidateEmail(uemail))
				{		
					{				
						return true;
					}
				}
			}
		}
	}
	return false;
}
function userid_validation(uid,max)
{
	var uid1=uid.value;
	var uidlen=uid1.length;
	if(uidlen<3||uidlen>max)
	{
		alert("User Id should not be less the 3 words or exceed"+max);
		uid.focus();
		return false;
	}
	else
	{
		return true;
	}

}
function ValidateEmail()
{
	var mailformat=/[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/;
	if(uemail.value.match(mailformat))
	{
		return true;
	}
	else
	{ 
		return false;
	}
}
function passid_validation(upassid,max)
{
	var passid1=upassid.value;
	var passlen=passid1.length;
	if(passlen<6||passlen>max)
	{
		alert("The password length should not exceed"+max+" character "+passid1);
		upassid.focus();
		return false;
	}
	else
	{
		return true;
	}
}

function confirmpass_validation(confirm_pass, max, upassid)
{
	var passid1=upassid.value;
	var pass1=confirm_pass.value;
	var passlen2=pass1.length;
	if(passid1!=pass1)
	{
		alert("Password Must be same");
		confirm_pass.focus();
		return false;
	}
	else
	{
		return true;
	}
}
