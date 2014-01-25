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
	<script type="text/javascript">
		var cssFileVal = $.cookie("cssfile");
		if(cssFileVal == null) {
			cssFileVal = "vader";			
		}
		
		$('head').append('<link rel="stylesheet" href="${pageContext.request.contextPath}/css/'+cssFileVal+'/jquery-ui.css" />');
		$('head').append('<link rel="stylesheet" href="${pageContext.request.contextPath}/css/'+cssFileVal+'/jquery.ui.theme.css"></link>');
	</script>
	
	
	<style type="text/css">
		#sdiv{
			border: 7px solid #708090;
		    height: 500px;
		    width: 400px;
		}
		.ui-widget {
    		font-size: 12px !important;
		}
		#sortable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
  		#sortable li { 
  			margin: 0 3px 3px 3px; 
  			padding: 0.4em; 
  			padding-left: 1.5em; 
  			font-size: 12px; height: 18px; }
  		#sortable li span { position: absolute; margin-left: -1.3em; }		
	</style>
</head>
<body>
	
	<select id='vivekselect'>
		<option value='start'>start</option>
		<option value='sunny'>sunny</option>
		<option value='vader'>vader</option>
		<option value='swanky-purse'>swanky-purse</option>
		<option value='overcast'>overcast</option>
		<option value='hot-sneaks'>hot-sneaks</option>
	</select>

	<div id='sdiv'>
	<ul id="sortable">
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 1</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 2</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 3</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 4</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 5</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 6</li>
	  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 7</li>
	</ul>
	</div>

</body>

<script type="text/javascript">

	$(function(){
		$('#sortable').sortable();
		$('#sortable').disableSelection();
	});	
	
	$('#vivekselect').change( function(){
		console.log("select..."+ $(this).val());
		$.cookie("cssfile", $(this).val());
	}); 
</script>
</html>