/**
 * Session on 'this' keyword.
 * 
 * GLOBAL CONTEXT
 * 	1. In global context this keyword refers to the window object.
 * 	2. The global variable become propety of the global context ie to window object. 
 * 	3. this === window; will retur true
 * 	4. this.document === window.document
 * 
 *  FUNCTION CONTEXT
 * 	1. It depends how the function has been called. 
 * 	2. The simple call to the global function, this refers to the window object.
 * 	3. The behavior change when called using the call() or apply() method.
 * 
 * OBJECT METHOD CONTEXT
 * 	1. It refers to the object trough which has been called. 
 * 	2. The context can vary while called using the call() or apply() method.
 */

// GLOBAL CONTEXT
var aCount = 10;
window.alert(this.aCount);
window.alert(window.aCount);
window.alert(this === window);




// GLOBAL FUNCTION CONTEXT
function myFunction(){
	window.alert(this.aCount);
	window.alert(window.aCount);
}
myFunction();



// Object Context
var rediff = {
	service : {},
	util : {}
};

rediff.service.prop1 = 12;
rediff.service.method1 = function() {
	window.alert(this.prop1);
};
rediff.service.method1();