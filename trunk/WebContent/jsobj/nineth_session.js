/**
 * In this session we will be learning about Client side Cookie. 
 */ 
var cookieValue = "fname,cookie; value";
var cookieValue1 = "more cookie";
var fnameCookie = escape(cookieValue) + ";";
var lnameCookie = escape(cookieValue1) + ";";

// setting the cookie
window.document.cookie = "fnameCookie=" + fnameCookie;
window.document.cookie = "lnameCookie=" + lnameCookie;


// getting the cookie
var allCookies = window.document.cookie;

window.alert(allCookies);


var cookieArr = allCookies.split(";");
cookieArr.forEach(function(element, index){
	console.log(index + "::" + element);
});