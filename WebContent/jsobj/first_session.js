window.onload = function() {

	// 1::OBJECT LITERAL::Simplest
	var aObject = {};
	
	// 2::Object Literal::Object with property
	var aObject = {};
	aObject.prop1 = "value1";
	aObject.prop2 = "value2";
	
	// 3::Object literals with property and method
	var aObject = {};
	aObject.prop1 = "value1";
	aObject.prop2 = "value2";
	aObject.method1 = function() {
		window.alert("method1");
	};
	aObject.method1();
	
	// 4::FIRST::Object Literals
	var fObject = {
			'key1':'value1',
			'key11':'value11',
			'key2':'value2',
			'key3':'value3'
	};
	window.alert(fObject.key1);
	window.alert(fObject.key11);
	
	
	// 5::Object Literals:: With method
	var sObject = {
		prop1 : 'Value1',
		prop2 : 'Value2',
		prop3 : 'Value3',
		
		method1 : function(){
			window.alert("method1");
		},
		method2 : function(){
			window.alert("method2");
		}
	};
	
	// accessing property
	window.alert(sObject.prop1);
	// accessing method
	sObject.method1();
	
	
	
	// 6::Object literals with for loop
	var fObject = {'key1':'value1','key11':'value11','key2':'value2','key3':'value3'};
	
	// ACCESSING::Your first obejct
	var rKey = "";
	var rValue = "";
	for(var lData in  fObject) {
		rKey = rKey + lData;
		rValue = rValue + fObject[lData];
	}
	window.alert(rKey);
	window.alert(rValue);
	
};