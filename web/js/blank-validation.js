function blankvalidation()
{

	
	var username = document.forms["Signin"]["username"].value;
	var password = document.forms["Signin"]["password"].value;	
	
	if(username == '' || password == '' || username == null || password == null)
	{
	alert("Username or Password Can not be null");  
	return false;
	}
}
