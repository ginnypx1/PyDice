//1. create an array with all of the dice images
var diceImages = [
	IMG_FILE1,
	IMG_FILE2,
	IMG_FILE3,
	IMG_FILE4,
	IMG_FILE5,
	IMG_FILE6,
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