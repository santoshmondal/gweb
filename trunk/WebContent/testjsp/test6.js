
var rediff = {
	util : {}	
};

var availableTags = [
	"ActionScript",
	"AppleScript",
	"Asp",
	"BASIC",
	"C",
	"C++",
	"Clojure",
	"COBOL",
	"ColdFusion",
	"Erlang",
	"Fortran",
	"Groovy",
	"Haskell",
	"Java",
	"JavaScript",
	"Lisp",
	"Perl",
	"PHP",
	"Python",
	"Ruby",
	"Scala",
	"Scheme"
	];
/**
 * STYLE-1
 */
$(function(){	
	console.log("STYLE1::LOG");
	
	rediff.util.method1 = function() {		
		console.log("rediff::util::method1::LOG");	
		
		$('#aid').autocomplete({
			source : availableTags
		});
	};
	
	$('#id3').click(function(){
		console.log('ID3::LOG');
		$.post('inc6.jsp', function(response){
			$('#content').html(response);
		});
	});
	
	$('#dtext').datetimepicker({
		showSecond: true,
		timeFormat: 'HH:mm:ss',
		stepHour: 1,
		stepMinute: 10,
		stepSecond: 10
	});;
	
});



