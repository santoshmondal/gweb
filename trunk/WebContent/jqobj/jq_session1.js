/**
 * STYLE-1
 * 	$(document).ready(function(){
 * 	});
 * 
 * 
 * STYLE-2::I PREFRER THIS
 * 	$(function(){
 * 	});
 * 
 * 
 * STYLE-3
 * 	(function($){
 * 	})(jQuery);
 */ 

$(function(){
	// window.alert(this + "::this represents document object.");
	window.console.log(this);
	window.console.log($(this));
	
	var ajqObj =  $('#id1');
	ajqObj.click(function(){
		console.log($(this));
		console.log("SOME LOG ACTIVITY");
	});
	
	
	$("#id1").click(function(){
		var reqURL = "abc.txt";
		var reqData = "";
		$.get(reqURL, reqData, function(resData, resStatus, jqXHR){
			console.log("RESPONSEDATA::" + resData);
			console.log("RESPONSESTATUS::" + resStatus);
			console.log("jqXHR::" + jqXHR);
		});
	});
	
	
	$("#id1").click(function(){
		var reqURL = "abc.txt";
		var reqData = "";
		var jqXhrObj = $.get(reqURL, reqData, function(resData, resStatus, jqXHR){
			console.log("RESPONSEDATA::" + resData);
			console.log("RESPONSESTATUS::" + resStatus);
		});
		
		jqXhrObj.fail(function(){
			console.log("OPERATION ON FAILURE");
		});
		
		jqXhrObj.always(function(){
			console.log("AN ALWAYS OPERATION");
		});
		
	});
	
	
	$("#id1").click(function(){
		var reqURL = "abc.txt";
		var reqData = "";
		
		$.get(reqURL, reqData, function(resData, resStatus, jqXHR){
			console.log("RESPONSEDATA::" + resData);
		});
		
	});
	
	$(document).ajaxSend(function(){
		console.log("BEFORE AJAX REQUEST SEND");
	});
});