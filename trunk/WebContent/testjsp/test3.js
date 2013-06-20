
var rediff = {
	util : {}	
};
/**
 * STYLE-1
 */
$(function(){	
	console.log("STYLE1::LOG");
	
	
	// Without callback
	$('#id1').click(function(){
		
		var localData = " Hi...   ";
		
		console.log("STYLE1::ID1 CLICK::LOG");
		console.log("STYLE1::ID1::" + $(this).html());
		
		console.log("STYLE1::" + localData.length);
		console.log("STYLE1::" + jQuery.trim(localData).length);
	});
	
	// Callback method calling
	$('#id2').click(function(){		
		rediff.util.test1.call(this, $('#id1'));
	});
	
	$('#id3').click(function(){		
		rediff.util.test1.call(this, '#id1');
	});
		
	rediff.util.test1 = function(paramID) {
		console.log('rediff.util.test1::LOG::');
		console.log($(this).html());
		console.log($(paramID).html());	
	};
	
	// Handling Form Submisson
	$('#formid1').submit(function(){		
		console.log('FormID::LOG');
		
		var allElements = $(this).serialize();
		console.log('PARAM::LOG::' + allElements);
		
		var fname = $('#inputid1').val();
		console.log('APPLY::VALIDATION::FNAME::'+fname);
		
		return false;
	});
	
});



