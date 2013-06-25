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
	
	$("#id1").click(function(){
		// $("#id2").toggle();
		// $("#id2").fadeToggle();
		// $("#id2").slideToggle();
		
		$("#id2").slideDown('slow','easeInCubic');
		setTimeout("$('#id2').slideUp('slow', 'easeInCubic')", 4000);
	});
	
	$.each(window, function(elem, index){
		console.log(elem);
	});
	
});