<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	
	<!-- jquery js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui-1.10.3.custom.min.js"></script>
	
	<!-- jquer css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/vader/jquery-ui-1.10.3.custom.min.css"></link>
	
	<!-- application js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/idemo/main.js"></script>
	<link rel="stylesheet" href='${pageContext.request.contextPath}/idemo/main.css'></link>
	
</head>



<body>
	
	<div id='container'>
		<div id='header_div'>
			Header content <input id='b1' type="button" value='Change Iframe' />
		</div>
		
		<div id='content_div'>
			<div id='dcontent_div' class='content_class'>
				dcontent
			</div>
			<div id='icontent_div' class='content_class'>
				<!-- <iframe src="demo_iframe.htm" width="200" height="200"></iframe> -->
				<iframe id='ifid' src="http://www.rediff.com" width="281" height="240"></iframe>
			</div>
		</div>
		
		<div id='footer_div'>
			Footer content
		</div>
	</div>
</body>

</html>