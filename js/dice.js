//1. create an array with all of the dice images
var diceImages = [
    "./img/Dice1.jpg", // one
    "./img/Dice2.jpg", // two
    "./img/Dice3.jpg", // three
    "./img/Dice4.jpg", // four
    "./img/Dice5.jpg", // five
    "./img/Dice6.jpg", // six
];

//2. roll requested number of dice every time button is pressed
$("button").click(function() {
    // clear .dicebox
    $(".dicebox").empty();
    // grab the number of dice requested
    var numDice = $('input:text').val();
    // change the requested string to an int
    numDice = parseInt(numDice);
    // for each dice in numDice
    for (var i=0; i<numDice; i++) {
        // assign a random number 1-6
        var randomNum = Math.floor(Math.random() * 6);
        // assign the corresponding image from diceImages
        var roll = diceImages[randomNum];
        // create an image of that dice
        var image = "<img src=" + roll + ">";
        // put that image in .dicebox
        $(".dicebox").append("<li>" + image + "</li>");
    } // end for loop
    $(function() {
        $('.directions').matchHeight({
            target: $('.diceroll')
         });
    });
});// end click function