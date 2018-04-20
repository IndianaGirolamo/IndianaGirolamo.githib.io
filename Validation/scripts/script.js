function validationCheck(x) {

switch (x) {
	case 'firstName':
	var firstName = document.getElementById("firstName").value;
	firstNameCheck = firstName.search(/^[a-zA-Z']/g);

	 //If the results are valid
	if (firstNameCheck != -1) {
		var extraSpace = firstName.indexOf(" ");
		firstName.value = firstName.toString();

		//If there wasn't any space found in the search
		if (extraSpace == -1) {
			firstNameCap = firstName.substr(0,1).toUpperCase() + firstName.substr(1).toLowerCase();

			document.getElementById('firstName').value = firstNameCap;

		} if (extraSpace != -1) {

		// if a space was found, this is the method to do if there's a space in the name at all.
		firstNameCap = firstName.substr(0,1).toUpperCase() + firstName.substr(1, extraSpace).toLowerCase();
		firstNameCap2 = firstName.substr(extraSpace + 1,1).toUpperCase() + firstName.substr(extraSpace + 2).toLowerCase(); 

		document.getElementById('firstName').value = firstNameCap + firstNameCap2;
	} }

	else {
		window.alert("You have entered an invalid name");
		document.getElementById('firstName').value = "john";
		document.getElementById('firstName').focus();
	}
	break;

	case 'lastName':

	var lastName = document.getElementById("lastName").value;
	lastNameCheck = lastName.search(/^[a-zA-Z']/i);

	 //If the results are valid
	if (lastNameCheck != -1) {
		var extraSpace = lastName.indexOf(" ");
		lastName.value = lastName.toString();

		//If there wasn't any space found in the search
		if (extraSpace == -1) {
			lastNameCap = lastName.substr(0,1).toUpperCase() + lastName.substr(1).toLowerCase();

			document.getElementById('lastName').value = lastNameCap;

		} if (extraSpace != -1) {

		// if a space was found, this is the method to do if there's a space in the name at all.
		lastNameCap = lastName.substr(0,1).toUpperCase() + lastName.substr(1, extraSpace).toLowerCase();
		lastNameCap2 = lastName.substr(extraSpace + 1,1).toUpperCase() + lastName.substr(extraSpace + 2).toLowerCase(); 

		document.getElementById('lastName').value = lastNameCap + lastNameCap2;
	} }

	else {
		window.alert("You have entered an invalid name");
		document.getElementById('lastName').value = "Doe";
		document.getElementById('lastName').focus();


	}
	break;

	case 'address':
	var address = document.getElementById("address").value;

	var addressCheck = address.search(/[a-z0-9]/i);

	//If results are valid
	if (addressCheck !== -1) {
		address.value = address.toString();
	} else {
		alert("You have entered an invalid address");
		document.getElementById("address").value = "123 Main Street";
		document.getElementById('address').focus();
		
	}
	break;

	case 'city':
	var city = document.getElementById("city").value;
	var cityCheck = city.search(/^[a-z]/ig);

	// If there are only letters
	if (cityCheck !== -1) {
		city.value = city.toString();
		var extraSpace = city.indexOf(" ");

		// If there were no spaces in the city 
		if (extraSpace == -1) {
			cityCap = city.substr(0,1).toUpperCase() + city.substr(1).toLowerCase();

			document.getElementById('city').value = cityCap;
		}
			if (extraSpace !== -1) {
				cityCap = city.substr(0,1).toUpperCase() + city.substr(1, extraSpace).toLowerCase();

				cityCap2 = city.substr(extraSpace + 1,1).toUpperCase() + city.substr(extraSpace + 2).toLowerCase(); 

		document.getElementById('city').value = cityCap + cityCap2;
	}}
			
			else {
				alert("Please enter a valid city");
				document.getElementById('city').value = "New York"; 
				document.getElementById('city').focus();
			}
				break;

				case 'state':
				var state = document.getElementById("state").value;
				//I want to validate via a regular expression
				stateRegExp = /^(AL|AK|AZ|AR|CA|CO|CT|DE|FL|GA|HI|ID|IL|IN|IA|KS|KY|LA|ME|MD|MA|MI|MN|MS|MO|MT|NE|NV|NH|NJ|NM|NY|NC|ND|OH|OK|OR|PA|RI|SC|SD|TN|TX|UT|VT|VA|WA|WV|WI|WY)$/i;

				stateCheck = state.search(stateRegExp);

				if (stateCheck !== -1) {
					stateCap = state.substr(0,1).toUpperCase() + state.substr(1,2).toUpperCase();
					document.getElementById("state").value = stateCap;
				}
				else {
					window.alert("Please enter a valid state abbreviation");
					document.getElementById('state').value = "NY"
					document.getElementById('state').focus();
				}
				case 'zipCode':
				var zipCode = document.getElementById('zipCode').value;

				zipCodeRegExp = /[^0-9{5}]/g;

				zipCodeCheck = zipCode.search(zipCodeRegExp);

				// If zipCode only contains letters
				if (zipCodeCheck == -1) {
					zipCode.value = zipCode.toString();
				} else {
					alert("Please enter a valid zipCode");
					document.getElementById('zipCode').value = "01234";
					document.getElementById('zipCode').focus();
				}
				break;
			}
		}