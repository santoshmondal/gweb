/**
 * In this session will learn about arguments and event object;
 */

// arguments object
function testArgument() {
	console.log(arguments.length);
	console.log(arguments );
}

testArgument("raja");
testArgument("raja", "raj");
testArgument("raja", "raj", "rajdeep");


//Event object::for better understanding call this method on some event.
function testEvent() {
	alert("Event test::");
	alert(window.event);
	
	if(window.event != undefined) {
		alert(window.event.type);
	}
}

testEvent();
