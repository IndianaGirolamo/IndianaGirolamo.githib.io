function showStuff(x) {

	// Grab elements on page
	var x = document.getElementById(x);
	var y = document.getElementsByClassName("master");
	
	//Cycle through each section and hide it from page
	for (i=0; i < y.length; i++ ) {
		y[i].style.display = "none";
	}
	
	//Set the selected section to show on the page
	x.style.display = "block";

	//This takes the selected section and appends it to a another div (in the middle of the page)
	document.getElementById("nothing").appendChild(x);
}

//This function plays the AOL sound
function welcome() {
var audio = new Audio('Welcome.mp3');
audio.play();
}

function showSection(x) {
	
	//Grab elements on the page
	var x = document.getElementById(x);
	var y = document.getElementsByClassName("content");
		
	// Anything with the content class will be set to not display.
	for (i=0; i < y.length; i++) {
		y[i].style.display = "none";
	}

	// Anything assigned with the x class will be set to block.
	x.style.display = "block";	
	document.getElementById("linkNothing").appendChild(x);
	}

function switchColors(element) {
	
	//Grab elements on page
	var header = document.getElementsByClassName("header");

	//Cycle through the H3 tags and reset their color.
	for (i=0;i < header.length; i++) {
		header[i].style.color = "#ff4c4c";
	}

	//Set the selected h3's color to purple. Both  lines are here so that the underline & text will change color.
	element.firstChild.style.color = "#2292A4"; //h3
	//element.style.color = "purple"; // a tag
}

function switchColors2(element) {
	
	//Grab elements on page
	var header = document.getElementsByClassName("sublinks");

	//Cycle through the H3 tags and reset their color.
	for (i=0;i < header.length; i++) {
		header[i].style.color = "#ff4c4c";
	}

	//Set the selected h3's color to purple. Both lines are here so that the underline & text will change color.
	element.style.color = "#2292A4"; // entire text
}






