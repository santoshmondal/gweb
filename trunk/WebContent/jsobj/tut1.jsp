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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/smoothness/jquery-ui.css"></link>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/smoothness/jquery.ui.theme.css"></link>
	<style type="text/css">


.ui-widget {
    font-size: 12px !important;
}		
		
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
	Radio::<br/>Read<input type='radio' name='dept' value='it' onchange="test.call(this);return false;"/>
	Write<input type='radio' name='dept' value='dev' onchange="test.call(this);return false;"/>

	<br /><br />Now Checkbox<br />
	Check1<input id='c1' type="checkbox" name='deptc' value='devc1' onchange="test.call(this);return false;"/>
	Check2<input id='c2' type="checkbox" name='deptc' value='devc2' onchange="test.call(this);return false;"/>
	Check3<input id='c3' type="checkbox" name='deptc' value='devc3' onchange="test.call(this);return false;"/>
	
	<br /><br />Another Checkbox<br />
	Check1<input id='c21' type="checkbox" name='check2' value='devc21' onchange="test.call(this);return false;"/>
	Check2<input id='c22' type="checkbox" name='check2' value='devc22' onchange="test.call(this);return false;"/>
	Check3<input id='c23' type="checkbox" name='check2' value='devc23' onchange="test.call(this);return false;"/>
	
	
	<br /><br />
	<button id='bdialogid' onclick="javascript:showHideDialog.call(this, 'dialog-form');return false;">DIALOG</button>

	<div id="dialog-confirm" title="Empty the recycle bin?">
  		<p>
  			
  			These items will be permanently deleted and cannot be recovered. Are you sure?
  		</p>
	</div>
	
	
	<div id="dialog-form" title="Create new user">
	  <p class="validateTips">All form fields are required.</p>
	 
	  <form>
	  <fieldset>
	    <label for="name">Name</label>
	    <input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all">
	    <label for="email">Email</label>
	    <input type="text" name="email" id="email" value="" class="text ui-widget-content ui-corner-all">
	    <label for="password">Password</label>
	    <input type="password" name="password" id="password" value="" class="text ui-widget-content ui-corner-all">
	  </fieldset>
	  </form>
	</div>
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
		console.log(this + this.name);
		/* if(this.checked) {
			console.log(this.id);
			console.log(this.value);
		} */
		
		$("input[name="+this.name+"][type=checkbox]:checked").each (function() {
			   console.log( $(this).val() );
		});
		
		$("input[name="+this.name+"][type=radio]:checked").each (function() {
			   console.log( $(this).val() );
		});
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
		
		
	function showHideDialog(dialogdiv) {
		console.log(this.id + "::" + dialogdiv);
		
		$("#"+dialogdiv).dialog({
			//resizable: false,
		   	height:240,
		    //modal: true,
		    buttons: {
		    	"OHKAY" : function() {
		    		console.log("OHKAY CLICKEDD!!!");
		    		$(this).dialog("close");	
		    	}, 
		    	"CANCELL" : function() {
		    		$(this).dialog("close");
		    		console.log("CANCELLED CLICKEDD!!!");
		    	}, 
		    	"CONFIRM" : function() {
		    		$(this).dialog("close");
		    		console.log("Confirm CLICKEDD!!!");
		    	}
		    }
		});
	}
	
	
</script>
</html>