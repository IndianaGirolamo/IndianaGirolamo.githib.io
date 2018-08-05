function generatePhrase() {
    // Random index picking method found at https://stackoverflow.com/questions/5915096/get-random-item-from-javascript-array#5915122

    var industry = Array ("soda", "toilet paper", "diamonds", "cereal", "cable", "socks", "water bottles", "gerbils", "office chairs", "condoms", "swiss watches", "natural penis enlargers");

    var sentence = "why aren't millennials buying ";
    
    var rando = industry[Math.floor(Math.random() * industry.length)];

    document.getElementById("insert").innerHTML = sentence + rando
}