/**
 * Must Understand
 * 1. this
 * 2. call() and apply()
 *    apply()::
 *    	Calls a function with a given this value and arguments provided as an array.
 *    	https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/apply?redirectlocale=en-US&redirectslug=JavaScript%2FReference%2FGlobal_Objects%2FFunction%2Fapply
 *    call()::
 *    	Calls a function with a given this value and arguments provided individually.
 *   	https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/call?redirectlocale=en-US&redirectslug=JavaScript%2FReference%2FGlobal_Objects%2FFunction%2Fcall
 *    
 *  NOTE: While the syntax of this function is almost identical to that of apply(), 
 *  the fundamental difference is that call() accepts an argument list,
 *  while apply() accepts a single array of arguments.  
 *  
 *  IMP::http://odetocode.com/blogs/scott/archive/2007/07/04/function-apply-and-function-call-in-javascript.aspx
 *  IMP::http://javascript.crockford.com/
 *    
 * 3. event
 * 4. arguments
 * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this
 * 
 * 5. Inheritance
 * 6. Browser Objects Model
 * 7. Exception and Error Objects
 * 8. Cookie Object
 * 9. jQuery Objects
 * 10.jQuery UI
 * 11. IMAGE TEST
 */
var rediff = {
	service : {},
	util 	: {}
};

window.onload = function() {
	
	// GLOABAL CONTEXT
	window.alert(this);
	window.alert(this === window );
	window.alert(this.document === document);
	window.alert(typeof this);

	// CONTEXT IN OBJECT METHOD
	rediff.service.prop1 = "Some property value";
	rediff.service.method1 = function() {
		window.alert(this.prop1);
	};
	
	rediff.util.method1 = function() {
		window.alert(this.type);
	};
	
	rediff.service.method2 = function() {
		alert(this.value);
		alert(this.prop1);
	};
	
};


// FUCNTION CONTEXT
function abc(obj){
	this.a = "raj";
	window.alert(window.a);
	window.alert(this === window);
	obj.style.color = 'blue';
}

abc();

function bcd() {
	alert(this);
	this.bala = "balaji";
	window.alert(bala);
	window.alert(window.bala);
}

function def() {
	window.alert(this.value + "::" + this.type);
}


// arguments object
function testArgument() {
	console.log(arguments.length);
	console.log(arguments );
}

testArgument("raja");
testArgument("raja", "raj");
testArgument("raja", "raj", "rajdeep");


// Event object
function testEvent() {
	alert("Event test::");
	alert(window.event);
	//alert(window.event.type);
}

testEvent();