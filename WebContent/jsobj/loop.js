/**
 * Handling for loop.
 */ 
var anArr = ["red", "redi", "redif", "rediff"];

// Loop through an array
function loop1() {
	for(var i=0; i<anArr.length; i++) {
		console.log(anArr[i]);
	}
}
loop1();


// Loop through an array
function loop2() {
	for(prop in anArr) {
		console.log(prop + "::" + anArr[prop]);
	}
}
loop2();



// loop through an object; this===window
for(prop in Node) {
	console.log(prop + "::" + Node[prop]);
}



// advanced usage of forEach
anArr.forEach(function(elem, index){
	console.log(index + "::" + elem);
});