function validateLogin()
{
	var email = document.forms["aloginForm"]["userId"].value;
	var password = document.forms["aloginForm"]["password"].value; 

	if (email.length < 2 || password.length < 5 || password == null || password.indexOf(" ") >= 0) {
		alert("Please enter your login details ");
		return false; 
	}	
	
}

function validateEditAdmin()
{
	var fName = document.forms["adminInfoForm"]["firstName"].value; 
	var lName = document.forms["adminInfoForm"]["lastName"].value; 	
	
	if (fName == null || fName == "" || lName == "" || lName == null || fName.lenght < 3) {
		alert("Please enter the name details correctly");
		return false; 
	}
	
	
}

function validateUpdateUser () {
 
   
	var email = document.forms["userInfoForm"]["userId"].value;	
	var city = document.forms["userInfoForm"]["city"].value;	
	var address = document.forms["userInfoForm"]["address"].value;
 
	var fName = document.forms["userInfoForm"]["firstName"].value; 
	var lName = document.forms["userInfoForm"]["lastName"].value; 
 
	var zipCode = document.forms["userInfoForm"]["zipCode"].value; 
 	var password = document.forms["userInfoForm"]["newPassword"].value;

	var changepassword = document.forms["userInfoForm"]["changePassword"].checked;
	 
	
	var atpos = email.indexOf("@");
	var dotpos= email.lastIndexOf(".");

	if (fName == null || fName == "" || lName == "" || lName == null || fName.lenght < 3) {
		alert("Please enter the name details correctly");
		return false; 
	}
	
	if (atpos < 1 || dotpos < atpos+2 || dotpos+2 >= email.length) {
		alert("Not a valid e-mail address");
		return false; 
	}
	if (address.length < 10) {
		alert("Not a valid address");
		return false; 
	}
	if (city == null || city == "" || city == " " || city.lenght < 3) {
		alert("Please enter the city details correctly");
		return false; 
	}
	
	if(zipCode.length < 5) {
		alert("Please enter a valid zip code");
		return false; 
	}
	if(changepassword == true) {
		if (password == null || password.length < 6) {
			alert("Passowrd is too short");
			return false; 
		}
	}
 
 
}


function validateSignUpAdmin() {
	
	var email = document.forms["SignUpAdminForm"]["uid"].value;	
	var password = document.forms["SignUpAdminForm"]["pwd"].value;	
	var confirm = document.forms["SignUpAdminForm"]["confirmation"].value;
	var fName = document.forms["SignUpAdminForm"]["fname"].value; 
	var lName = document.forms["SignUpAdminForm"]["lname"].value; 

	var atpos = email.indexOf("@");
	var dotpos= email.lastIndexOf(".");

	if (fName == null || fName == "" || lName == "" || lName == null || fName.lenght < 3) {
		alert("Please enter the name details correctly");
		return false; 
	}
	
	if (atpos < 1 || dotpos < atpos+2 || dotpos+2 >= email.length) {
		alert("Not a valid e-mail address");
		return false; 
	}
	
	if (password.length < 6) {
		alert("Minimun password length is 6");
		return false; 
	}

	if (password != confirm || password == "" || password == null) {
		alert("Passowrds missmatch");
		return false; 
	}
		
}


function validateCreateMovie()
{
	
	var releaseDate = document.forms["CreateMovieForm"]["releaseDate"].value;	
	var movieName = document.forms["CreateMovieForm"]["moiveName"].value; 
	var movieBanner = document.forms["CreateMovieForm"]["movieBanner"].value;
	var copies = document.forms["CreateMovieForm"]["availableCopies"].value; 
	var category = document.forms["CreateMovieForm"]["categoryId"].value; 

	
	if (movieName == null || movieName == "") {
		alert("Please enter a movie name");
		return false; 
	}
	
	
	if (releaseDate == "YYYY-MM-DD" || releaseDate == "") {
		alert("Please enter a valid date");
		return false; 
	}
	
	if (movieBanner.length < 3) {
		alert("Not a valid MovieBanner");
		return false; 
	}
 	if (copies.length < 1 || copies < 1) {
		alert("Please enter a number for available copies");
		return false; 
	}	
	if (category == "" || cateogry == "0") {
		alert("Please enter a valid category");
		return false; 
	}

	
	
}