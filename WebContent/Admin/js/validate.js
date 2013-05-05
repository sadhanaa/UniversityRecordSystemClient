function validateLogin()
{
	var email = document.forms["form1"]["uid"].value;
	var password = document.forms["form1"]["password"].value; 
	
	var atpos = email.indexOf("@");
	var dotpos= email.lastIndexOf(".");

	if (atpos < 1 || dotpos < atpos+2 || dotpos+2 >= email.length || password.length < 5 || password == null) {
		alert("Please enter your login details ");
		return false; 
	}	
	
}

function validateUpdateUser() {
 	if(IsEmptyOrNull(document.forms["form1"]["uid"].value))
	{
		alert("User id  must be filled out");
  		return false;
	}
	if(IsEmptyOrNull(document.forms["form1"]["fname"].value))
	{
		alert("First Name must be filled out");
  		return false;
	}
	if(IsEmptyOrNull(document.forms["form1"]["lname"].value))
	{
		alert("Last Name must be filled out");
  		return false;
	}
	if(IsEmptyOrNull(document.forms["form1"]["city"].value))
	{
		alert("City must be filled out");
  		return false;
	}
	if(IsEmptyOrNull(document.forms["form1"]["state"].value))
	{
		alert("State must be filled out");
  		return false;
	}
	if(IsEmptyOrNull(document.forms["form1"]["zipCode"].value))
	{
		alert("Zip must be filled out");
  		return false;
	}
	else
	{
		 var re = /^\d{5}([\-]\d{4})?$/;
		 var zip = document.forms["form1"]["zipCode"].value;
		 if( !re.test(zip))
		 {
			alert('Invalid ZipCode');
			return false;
		  }
	}
	if(document.forms["form1"]["membershipType"].value == "Premium")
	{
		var ccnum = document.forms["form1"]["creditCard"].value;
		if(IsEmptyOrNull(ccnum))
		{
			alert('Premium members must fill out credit card number');
		 	return false;
		}
		if(ccnum.length != 16)
		{
			alert('credit card number must be 16 digits');
		 	return false;
		}
		var regex = /^\s*\d+\s*$/;
		if( !regex.test(ccnum) ) 
		{
			alert('Invalid CC number');
		 	return false;
		}

}
	
}

function validateSignUp()
{
 
    	if(IsEmptyOrNull(document.forms["form1"]["uid"].value))
    	{
    		alert("User id  must be filled out");
      		return false;
    	}
    	if(IsEmptyOrNull(document.forms["form1"]["pwd"].value))
    	{
    		alert("Password  must be filled out");
      		return false;
    	}
    	if(IsEmptyOrNull(document.forms["form1"]["fname"].value))
    	{
    		alert("First Name must be filled out");
      		return false;
    	}
    	if(IsEmptyOrNull(document.forms["form1"]["lname"].value))
    	{
    		alert("Last Name must be filled out");
      		return false;
    	}
    	if(IsEmptyOrNull(document.forms["form1"]["stAddress"].value))
    	{
    		alert("Street Address must be filled out");
      		return false;
    	}
    	if(IsEmptyOrNull(document.forms["form1"]["stAddress"].value))
    	{
    		alert("Street Address must be filled out");
      		return false;
    	}
    	if(IsEmptyOrNull(document.forms["form1"]["city"].value))
    	{
    		alert("City must be filled out");
      		return false;
    	}
    	if(IsEmptyOrNull(document.forms["form1"]["state"].value))
    	{
    		alert("State must be filled out");
      		return false;
    	}
    	if(IsEmptyOrNull(document.forms["form1"]["zip"].value))
    	{
    		alert("Zip must be filled out");
      		return false;
    	}
    	else
    	{
    		 var re = /^\d{5}([\-]\d{4})?$/;
    		 var zip = document.forms["form1"]["zip"].value;
    		 if( !re.test(zip))
    		 {
    			alert('Invalid ZipCode');
    			return false;
    		  }
    	}
    	if(document.forms["form1"]["mem"].value == "Premium")
    	{
    		var ccnum = document.forms["form1"]["ccnum"].value;
    		if(IsEmptyOrNull(ccnum))
    		{
    			alert('Premium members must fill out credit card number');
			 	return false;
    		}
    		if(ccnum.length != 16)
    		{
    			alert('credit card number must be 16 digits');
			 	return false;
    		}
    		var regex = /^\s*\d+\s*$/;
    		if( !regex.test(ccnum) ) 
    		{
    			alert('bad input');
			 	return false;
    		}
 
    }
    function IsEmptyOrNull(arg)
    {
    	return (arg==null || arg=="");	
    }
}

function get_form( element )
{
    while( element )
    {
        element = element.parentNode;
        if( element.tagName.toLowerCase() == "form" )
        {
            //alert( element ) //debug/test
            return element;
        }
    }
    return 0; //error: no form found in ancestors
}

function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
        vars[key] = value;
    });
    return vars;
}