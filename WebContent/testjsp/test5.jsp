<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Some TITLE</title>
	<link rel='stylesheet' type='text/css' href="${pageContext.request.contextPath}/testjsp/test5.css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.9.1.custom/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/testjsp/test5.js"></script>	
</head>
<body>
	
	
	<div id='wrapper'>
	
		<!-- header Begins here -->
		<div id='header'>
			!!Header Info!!
		</div>
		<!-- header Begins here -->
	
		<!-- left Begins here -->	
		<div id='left'>
			!!Left Info!!
		</div>
		<!-- left ends here -->
	
		<!-- Content Begins here -->
		<div id='content'>
			<form id='formdiv'>
				Name: <input type='text' name='name' /><br/>
				Age: <input type='text' name='age' /><br/>
				<input type="submit">
			</form>
		</div>
		<!-- Content endss here -->
		
		<!-- Right Begins here -->
		<div id='right'>
			<a  id='aid' onclick='javascript:rediff.util.method2.call(this)'>some value</a>
		</div>
		<div id='id3' onclick='javascript:rediff.util.method2.call(this)'>
			HEllo ID3!HEllo ID3!HEllo ID3!HEllo ID3!
		</div>
		<!-- Right ends here -->
	
	
		<!-- Footer Begins here -->
		<div id='footer'>
			!!Footer Inormation!!
		</div>
		<!-- Footer ENDS here -->	
		
		
		<div id='demo'>
			!!DEMO DIV!!
		</div>
		
		<div id='popup'>
			!!POPUP DIV!!
		</div>
	</div>
	
</body>
</html>