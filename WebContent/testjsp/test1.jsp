<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Some TITLE</title>
	<link rel='stylesheet' type='text/css' href="${pageContext.request.contextPath}/testjsp/test1.css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/testjsp/test1.js"></script>	
	
</head>
<body>
	<div id='id1' class='id1'>
		HEllo ID! HEllo ID! HEllo ID!
	</div>
	
	<br />
	
	<div id='id2'>
		HEllo ID2! HEllo ID2! HEllo ID2!
	</div>
	
	<div id='id3' onclick='javascript:rediff.util.test1.call(this)'>
		HEllo ID3!HEllo ID3!HEllo ID3!HEllo ID3!
	</div>
</body>
</html>