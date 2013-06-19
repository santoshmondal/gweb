window.onload = function() {
	
	// 1::Objects with constructor
	var aObj = new Object();
	
	
	// 2::Object with constructor
	var aObj = new Object();
	aObj.prop1 = "value1";
	aObj.method1 = function() {
		alert("C, method1");
	};
	aObj.method1();
	
	
	
	// 3::Parametrized constructor
	function myObject(param1, param2, param3) {
		this.param1 = param1;
		this.param2 = param2;
		this.param3 = param3;
		
		this.method1 = function() {
			alert("myobject method1" + this.param1);
		} ;
	}
	var aObj = new myObject("raj", "rajaa", "raju");
	aObj.method1();
	
	
	
	// 4::Praam constructor
	var mineObject = function(param1, param2) {
		this.param1 = param1;
		this.param2 = param2;
		
		this.method1 = function(){
			alert("AOBJR::" + this.param1);
		};
	};
	
	var aObjRef = new mineObject("rama", "krishna");
	aObjRef.method1();
};