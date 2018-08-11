function generatePhrase() {
    // Random index picking method found at https://stackoverflow.com/questions/5915096/get-random-item-from-javascript-array#5915122

    var industry = Array ("soda", "toilet paper", "diamonds", "cereal", "cable", "socks", "water bottles", "gerbils", "office chairs", "condoms", "swiss watches", "natural penis enlargers", "real estate", "bananas", "watches", "apple juice", "preperation h", "Applebees food", "new cars", "belly button rings", "pornography", "alcohol", "music cds", "male masturbators", "reddit gold", "intellivision", "dvds", "oil", "feminist bumper stickers", "Mein Kampf", "coffee mugs", "comcast", "Hillary Clinton's excuses", "Donald Trump's presidency", "dinner for their parents", "zippo lighters", "plastic bags", "toilets", "deodorant", "Apple products", "foot fetish porn");

    var sentence = "Why aren't millennials buying ";
    
    var rando = industry[Math.floor(Math.random() * industry.length)];

    document.getElementById("insert").innerHTML = sentence + rando + "?";
}