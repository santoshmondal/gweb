/**
 * In this session will learn about exception handling in javascript.
 */ 
window.onerror = function(msg){
	window.alert(msg);
};


// Function which does not exist.
// bFunction();

function aFunction() {
	window.alert("sample method.");
	
	try{
		bFunction();	// does not exist.
	}catch(err) {
		alert("An exception occured while trying to call. " + err);
	}finally{
		console.log("Finally executed.");
	}
}

aFunction();