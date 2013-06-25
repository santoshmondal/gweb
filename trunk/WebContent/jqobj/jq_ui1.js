/**
 * $(function(){
 * });
 */
$(function(){

	$("#sortid").click(function(){
		console.log("request");
		$.post("/gweb/SortablejQUI", function(res){
			console.log("success");
			$("#dcontent_div").html(res);
		});
	});
	
});
