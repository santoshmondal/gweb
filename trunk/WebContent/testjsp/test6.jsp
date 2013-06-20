<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Some TITLE</title>
	<link rel='stylesheet' type='text/css' href="${pageContext.request.contextPath}/testjsp/test6.css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.9.1.custom/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.9.1.custom/js/jquery-ui-1.9.1.custom.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.9.1.custom/js/jquery-ui-timepicker-addon.js"></script>
	<link rel='stylesheet' type='text/css' href="${pageContext.request.contextPath}/js/jquery-ui-1.9.1.custom/css/vader/jquery-ui-1.9.2.custom.min.css"></link>
	<link rel='stylesheet' type='text/css' href="${pageContext.request.contextPath}/js/jquery-ui-1.9.1.custom/css/jquery-ui-timepicker-addon.css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/testjsp/test6.js"></script>	
</head>
<body>
	
	
	<div id='wrapper'>
	
		<!-- header Begins here -->
		<div id='header'>
		</div>
		<!-- header Begins here -->
	
		<!-- left Begins here -->	
		<div id='left'>
		</div>
		<!-- left ends here -->
	
		<!-- Content Begins here -->
		<div id='content'>
			Select Date: <input type='text' id='dtext' name='dtext'></input>
			
			Helloooo
			<br />
			<textarea id='areaid' rows="5" cols="55">textareee</textarea>
			
		</div>
		<!-- Content endss here -->
		
		<!-- Right Begins here -->
		<div id='right'>
		</div>
		<div id='id3' >
			id3			
		</div>
		<!-- Right ends here -->
	
	
		<!-- Footer Begins here -->
		<div id='footer'>
		</div>
		<!-- Footer ENDS here -->	
		
		
		<div id='demo'>
		</div>
		
		<div id='popup'>
		</div>
	</div>
	
	<script type="text/javascript">
		$(function(){
			alert("::" + $("#areaid").val());
			
			$("#areaid").val("sarfraz");
		})
	</script>
	
</body>
</html>