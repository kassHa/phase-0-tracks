var styles = {
	background: "pink",
	border: "12px solid green" 
};

$("#puppy").css(styles);

$("body").css("background", "lightblue");

var font = {
	fontSize: "24px",
	color: "red"
};

$("li").css(font);

$("h1").text("Doggie Page :)");


$("#puppy").click(function() {
	alert("This puppie's name is Archie! :)");
	$("body").css("background", "yellow");
});




