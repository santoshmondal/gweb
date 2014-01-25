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


.ui-widget {
    font-size: 12px !important;
}		
		

		
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
	
	<div  id="dialog-confirm" title="Empty the recycle bin?">
  		<p>
  			These items will be permanently deleted and cannot be recovered. Are you sure?
  		</p>
	</div>
	
	<button id='bdialogid' onclick="javascript:showHideDialog.call(this, 'dialog-confirm');return false;">DIALOG</button>

	
	
	
</body>

<script type="text/javascript">

	$("#bdialogid").button({
		label : "this is my button",
		text : true,
		icons: {
	        primary: "ui-icon-locked"
	     }
	});
	
	$("#dialog-confirm").dialog({
		autoOpen:false,
		closeText: "close this window" ,
		//resizable: false,
	   	height:200,
	    //modal: true,
	     show : { effect: "slideDown", duration: 1000 },
	     hide: { effect: "slideUp", duration: 500 },
	    buttons: {
	    	"OHKAY" : function() {
	    		console.log("OHKAY CLICKEDD!!!");
	    		$(this).dialog("close");	
	    	}, 
	    	"CANCELL" : function() {
	    		$(this).dialog("close");
	    		console.log("CANCELLED CLICKEDD!!!");
	    	} 
	    }
	       
	});	
		
	function showHideDialog(dialogdiv) {
		console.log(this.id + "::" + dialogdiv);
		var isOpen = $("#"+dialogdiv).dialog("isOpen");
		console.log(isOpen);
		
		if(!isOpen) {
			$("#"+dialogdiv).dialog("open");
		}
	}
	
	
	$('#vivekselect').change( function(){
		console.log("select..."+ $(this).val());
		$.cookie("cssfile", $(this).val());
		// window.location.reload();
	}); 
	
</script>
</html>