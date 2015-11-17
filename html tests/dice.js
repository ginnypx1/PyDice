//1. create an array with all of the dice images
var diceImages = [
	"img/Dice1.jpg",
	"img/Dice2.jpg",
	"img/Dice3.jpg",
	"img/Dice4.jpg",
	"img/Dice5.jpg",
	"img/Dice6.jpg",
];

//2. change the image every time roll_dice is pressed
$("button").click(function() {
	// get a random number 1-6
	var num = Math.floor(Math.random() * 6) + 1;
	// get the corresponding image from diceImages
	var roll = diceImages[num];
	// replace #pic_die image with that image
	$("#pic_die").attr("src", roll);
});// end click function