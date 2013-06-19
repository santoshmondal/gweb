window.onload = function() {
	
	// 1::Object Constructor
	var Student = function(uname, password) {
		this.uname = uname;
		this.password = password;
		
		this.getUname = function() {
			return this.uname;
		};
		
		this.getPassword = function() {
			return this.password;
		};
	};
	
	var sObj = new Student("raj", "raja");
	window.alert(sObj.getUname());
	
	
	
	// 2::Object Constructor:: Prototype
	var Employee = function(name, sal) {
		this.name = name;
		this.sal = sal;
		
		this.getName = function() {
			return this.name;
		};
		
		this.setName = function(newName){
			this.name = newName;
		};
		
		this.getSal = function() {
			return this.sal;
		};
		
		this.setSal = function(newSal) {
			this.sal = newSal;
		};
	};
	
	var eObj = new Employee("raju", 10000);
	window.alert(eObj.getName() + "::" + eObj.getSal());
	eObj.setName("rahul");
	eObj.setSal(20000);
	window.alert(eObj.getName() + "::" + eObj.getSal());
	
	
	// USING prototype to add property and method
	// The prototype property allows you to add properties 
	// and methods to an object.
	Employee.prototype.company = "Rediff";
	Employee.prototype.getCompany = function() {
		return this.company;
	};
	
	
	var eObj = new Employee("krisna", 200000);
	window.alert(eObj.getCompany());
};