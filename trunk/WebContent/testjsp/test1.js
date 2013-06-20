/**
 * $(document).ready(function(){
 * });
 * 
 * $(function(){
 * });
 * 
 * (function($){
 * })(jQuery);
 * 
 * STYLE-2
 */
(function($){
	console.log("STYLE Extend::LOG");
	// console.log($('#id1'));
	
	// Style-Extend
	jQuery.fn.doSomething = function() {
		console.log('jQuery doSomething::LOG::' + $(this).html());
	};
	
	// Style-Extend
	jQuery.fn.extend({
		doMore : function() {
			console.log('DOMORE CALL::LOG' + $(this).html());
		}
	});	
	
	// More Style
	$.fn.extend({
		doMore1 : function() {
			console.log('DOMORE1 CALL::LOG' + $(this).html());
		}
	});
	
})(jQuery);


var rediff = {
	util : {}	
};
/**
 * STYLE-1
 */
$(function(){	
	console.log("STYLE1::LOG");
	
	// Calling jQuery extended method
	/*$('#id2').doSomething();	
	$('#id2').doMore();	
	$('#id2').doMore1();*/
	
	// Without callback
	$('#id1').click(function(){
		console.log("STYLE1::ID1 CLICK::LOG");
		console.log("STYLE1::ID1::" + $(this).html());
	});
	
	// Callback method calling
	/*$('#id2').click(function(){
		console.log('ID2::' + $(this).html());
	}); */
	$('#id2').click(function(){
		id2callback.call(this);
		rediff.util.test1.call(this, $('#id3'));
	});
	
	function testCallback() {
		console.log('TESTCALLBACK::LOG::' + $(this).html());
	}
		
	var id2callback = function() {
		console.log('ID2CALLBACK::LOG::' + $(this).html());
	};
	
	rediff.util.test1 = function(diffID) {
		console.log('rediff.util.test1::LOG::');
		console.log($(this).html());
		console.log($(diffID).html());
	}; 
	
});



