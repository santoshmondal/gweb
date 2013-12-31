<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Java Script and Objects</title>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.10.3.custom.min.js"></script>

	<!-- jquer css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/vader/jquery-ui-1.10.3.custom.min.css"></link>
	<style type="text/css">
		
#searchdiv {
    background-color: infobackground;
    border: 10px solid #808080;
    display: block;
    font-family: Comic Sans MS;
    font-weight: lighter;
    line-height: 41px;
    padding-left: 10px;
}

		
	</style>
</head>
<body>
	
	<div id='show_hide_div'>
		<a id='show_search' href='#'>SHOW</a>
		<a id='hide_search' href='#'>HIDE</a>
	</div>
	
	<div id='searchdiv'>
		<div>Search <input type='text' name='search'/></div>
		<div>Search <input type='text' name='search'/></div> 
	</div>
	
	<a id='a1' href='#' onclick="javascript:test.call(this); return false;" value='hrefvalue'>LINK</a><br />
	
	<div id='d1'  onclick="javascript:test.call(this); return false;" value='divisionvalue'>DIVISION</div><br />
	
	
	Some Input::<input id='i1' type='text'  onclick="javascript:test.call(this); return false;" /><br />
	Radio::<input type='radio' name='dept' value='it' checked="checked" onclick="test.call();return false;"/>
	<input type='radio' name='dept' value='dev' onclick="test.call();return false;"/>

</body>

<script type="text/javascript">
	
	var core = {
		util : {},
		service : {}
	};
	
	// gloabal context
	console.log(this);

	// Object Context
	core.util.prop = "some property";
	core.util.method1 = function() {
		console.log(this.prop);
		console.log(core.util.prop);
	};
	core.util.method1();
	
	
	// function context
	function someMethod() {
		console.log(this);
	}
	someMethod(); 					// using global context
	someMethod.call(core.util); 	// using function context, overriding this
	
	function test() {
		console.log(this)
		console.log(this.value);
		// console.log(this.getAttribute('value')); //for div/a
	}
	
	
	// settimeout
	setTimeout("myRecursiveCall()", 1000);
	function myRecursiveCall(){
		var dateObj = new Date();
		console.log(dateObj);
		setTimeout("myRecursiveCall()", 600000);
	}
	
	
	// show/hide demo
	$(function(){
		var ckie = jQuery.cookie("ckey");
		console.log(ckie);
		if(ckie=='true') {
			$('#hide_search').hide();
			$('#searchdiv').hide();
			$('#show_search').show();
		} else {
			$('#show_search').hide();
		}
	});
	
	$('#show_search').click(function(){
		console.log("show");
		jQuery.removeCookie("ckey");
		$('#searchdiv').show();
		$('#hide_search').show();
		$('#show_search').hide();
	});
	
	$('#hide_search').click(function(){
		console.log("hide");
		jQuery.cookie("ckey", 'true');
		$('#searchdiv').hide();
		$('#hide_search').hide();
		$('#show_search').show();
	});
		
		

	
</script>
</html>