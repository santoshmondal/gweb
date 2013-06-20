
var rediff = {
	util : {}	
};
/**
 * STYLE-1
 */
$(function(){	
	console.log("STYLE1::LOG");
	
	rediff.util.method1 = function(ajaxUrl, fromData) {		
		console.log("ELEMENTS::LOG::" + $(this).serialize());
		
				
		var jqXHR = $.post(ajaxUrl, formData, function(responseData) {
			console.log("SUCCES-RESPONSE::LOG::"+responseData);
		});
		
		jqXHR.complete(function(){
			console.log("AJAX-COMPLETE::LOG");
		});
		
		jqXHR.success(function() {
			console.log("AJAX::SUCCESS::LOG");
		});
		
		jqXHR.error(function(){
			console.log("AJAX::ERROR::LOG");
		});		
	};
	
	
	// Starts here
	$('#header').click(function(){
		console.log("CLICK::LOG" + this);
		
		rediff.util.method1.call(this);
	});
	
	
	// Starts here
	$('#formdiv').submit(function() {
		console.log("FORMDIV::LOG");
		
		var formData = $(this).serialize();
		rediff.util.method1.call(this, 'abac.txt', formData);
		
		return false;
	});
	
	
	// POPUP DIV DEMO
	/*$('#demo').bind('click', function (event) {
	    $('#popup').css('left',event.pageX);      // <<< use pageX and pageY
	    $('#popup').css('top',event.pageY);
	    $('#popup').css('display','inline');     
	    $("#popup").css("position", "absolute");  // <<< also make it absolute!
	});*/
	$('#demo').click(function (event) {
	    $('#popup').css('left',event.pageX);      // <<< use pageX and pageY
	    $('#popup').css('top',event.pageY);
	    $('#popup').css('display','inline');     
	    $("#popup").css("position", "absolute");  // <<< also make it absolute!
	    
	    $('#popup').slideUp(5000);
	});
	
	/*$('#aid').click(function(){
		console.log("AID::"+$(this).html());
	});*/
	
	rediff.util.method2 = function(){
		console.log("AID::"+$(this).html());
	};
	
});



