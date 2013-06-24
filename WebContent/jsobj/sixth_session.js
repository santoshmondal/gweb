/**
 * In this session will learn the usage of the call() and apply() method.
 * 1. The call() and apply() are identical. they are different in terms of they accept params.
 */
var aCount = 12;
var gObj = {
	aCount : 10	
};


// FUNCTION CONTEXT
function aFunction() {
	window.alert(this.aCount);
}

aFunction();				// 12, here this is global;
aFunction.call(gObj); 		// 10, here this refers gObj object;




// OBJECT METHOD CONTEXT
var rediff = {
	service : {},
	util : {}
};

rediff.service.aCount = 15;
rediff.service.method1 = function() {
	window.alert(this.aCount);
};

rediff.service.method1();				// 15, this, referes rediff.service object
rediff.service.method1.call(this);		// 12, this, referes global object
rediff.service.method1.call(gObj);		// 10, this, rerers gObj object