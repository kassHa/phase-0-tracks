// Function that takes a string as a parameter, and reverses the string.
// Take each letter from the end, and add it to the new variable.

function reverse(name) {
	var newName = '';
	for (var i = (name.length)-1; i >= 0; i--) {
		newName += name[i]; 
		
	}

	return newName;
}

console.log(reverse("kasia"));
var t;
t = reverse("arci");
