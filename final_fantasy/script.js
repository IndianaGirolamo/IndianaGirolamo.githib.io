function myFunction(x) {


	// Declare path variables
	var wav = ".wav";
	var png = ".png";
	var jpg = ".jpg";
	var imagePath = "images/";
	var audioPath = "audio/";
	var charPath = "charImage/";

	//Reference all audio elements
	var audio = document.getElementsByTagName('audio');

	//Cycle through each audio element. Pause the audio file and reset it's time to 0 
	for (i = 0; i < audio.length; i++) {
		audio[i].pause();
		audio[i].currentTime = 0;
	} 
	
	//Reference the id of the audio tag and play it.
	document.getElementById(x + wav).play();


	//Display related images
	document.getElementById("sideImage").src = imagePath + x + jpg;
	document.getElementById("charImage").src = charPath + x + png;
}
