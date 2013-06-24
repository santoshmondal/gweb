/**
 * In this session will learn Inheritance concept in javascript.
 * 1. obj.__proto__
 * 2. obj.prototype
 */ 
function Employee(name, dept) {
	this.name = name;
	this.dept = dept;
};


function Manager(name, dept, project) {
	Employee.call(this, name, dept);
	this.project = project;
};

Manager.prototype = new Employee();


// Create an object of manager
var mObj = new Manager("rediff", "dev", "rps");
window.alert(mObj.name + "::" + mObj.dept + "::" + mObj.project);





// OBJECT CONTEXT WAY
var rediff = {
	service : {}	
};

rediff.service.Employee = function(name, dept) {
	this.name = name || "";
	this.dept = dept || "";
};

rediff.service.Manager = function(name, dept, proj) {
	rediff.service.Employee.call(this, name, dept);
	this.proj = proj || "";
};
rediff.service.Manager.prototype = new rediff.service.Employee();

// crate an object of Manager
var objMgr = new rediff.service.Manager("rediffff", "devvvvv", "rpssss");
window.alert(objMgr.name + "::" + objMgr.dept + "::" + objMgr.proj);

