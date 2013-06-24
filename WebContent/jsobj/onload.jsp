<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Java Script and Objects</title>
	
	<script type="text/javascript" src="loop.js"></script>
</head>
<body>

Hello js objects.

	<div id='id1' onclick="javascript:rediff.service.method1(); return false;" style='color:pink'>
		DIVISION WITH ID.
	</div>
	
	<br />
	INPUT::<input type='text' name='text1' onclick="javascript:abc(this);return false;" value='raj'/>
	
	<br />
	blah blah,,,,
	<button  onclick='javascript:def.call(this);'>HELLO</button>
	<button value='MBUTTON' onclick='javascript:rediff.service.method2.call(this);'>HELLO</button>
	
	<br />more button
	<button  onclick='javascript:testEvent(this);'>Event Click me</button>
	
</body>
</html>