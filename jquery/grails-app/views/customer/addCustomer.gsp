<!doctype html>

<html>
<head>
	<title>Template</title>
        <script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
        
        <script type="text/javascript">
            
   $(document).ready(function(){
   
    var form= $("#formCustomer");


   form.submit(function(event){
	var firstName=$("#firstName").val();
        var lastName=$("#lastName").val();
	var password=$("#password").val();

	validateFirstNameFeild(firstName,event);
        validatelastNameFeild(lastName,event);
	validatePasswordField(password,event);
});

function validateFirstNameFeild(firstName,event){
if(!isValidFirstName(firstName)){
$("#firstName-feedback").text("Please enter at least two characters");
event.preventDefault();
	} else{
		$("#firstName-feedback").text("");
	}
}
function validatelastNameFeild(lastName,event){
if(!isValidLastName(lastName)){
$("#lastName-feedback").text("Please enter at least two characters");
event.preventDefault();
	} else{
		$("#lastName-feedback").text("");
	}
}

function validatePasswordField(password,event){
	if(!isValidPassword(password)){
$("#password-feedback").text("The password should have at least six characters and contain a number");
event.preventDefault();
	} else{
		$("#password-feedback").text("");
	}
}






function isValidFirstName(firstName){
	return firstName.length>=2;
}
function isValidLastName(lastName){
	return lastName.length>=2;
}
function isValidPassword(password){
	return password.length>=6 && /.*[0-9].*/.test(password);

}

   
   });
    </script>
</head>

<body>
    
    
    <form id="formCustomer" name="formCustomer" action="addCustomer" method="post">
        First Name:<input id="firstName" type="text" name="firstName"><span id="firstName-feedback"></span> <br>
Last Name:<input id="lastName" type="text" name="lastName"><span id="lastName-feedback"></span> <br>
Password:<input id="password" type="password" name="password"><span id="password-feedback"></span> <br>
<input id="submit" type="submit" name="submit" value="Add a Customer">
</form>
</body>
</html>