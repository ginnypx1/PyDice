//1. create an array with all of the dice images
var diceImages = [
	"static/img/Dice1.jpg",
	"static/img/Dice2.jpg",
	"static/img/Dice3.jpg",
	"static/img/Dice4.jpg",
	"static/img/Dice5.jpg",
	"static/img/Dice6.jpg",
];

//2. change the image every time roll_dice is pressed
$("button").click(function() {
	// get a random number 1-6
	var num = Math.floor(Math.random() * 6);
	// get the corresponding image from diceImages
	var roll = diceImages[num];
	// replace #pic_die image with that image
	$("#pic_die").attr("src", roll);
});// end click function