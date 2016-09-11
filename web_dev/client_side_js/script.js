console.log("it works! yeeeeyy yeeeeeeeeeeeyyyyyy huraaaaaaa :)");

var element = document.getElementsByTagName("strong");
element[0].style.border = "3px solid yellow";

var element1 = document.getElementsByTagName("html");
element1[0].style.background = "pink";

function backgroundColor() {
	var background = document.getElementsByTagName("html");
	background[0].style.background = "blue";
}

var photo = document.getElementById("puppy");
photo.addEventListener("click", backgroundColor);


