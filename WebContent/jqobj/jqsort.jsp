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
	<script type="text/javascript" src="${pageContext.request.contextPath}/jqobj/jq_ui1.js"></script>
	<link rel="stylesheet" href='${pageContext.request.contextPath}/jqobj/main.css'></link>
	
	<style type="text/css">
		#sortable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
	  	#sortable li { margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; font-size: 1.4em; height: 18px; }
	  	#sortable li span { position: absolute; margin-left: -1.3em; }
	</style>
</head>



<body>
	
	<div id='container'>
		<div id='header_div'>
			Header content <input id='sortid' type="button" value='SORT' />
		</div>
		
		<div id='dcontent_div'>
			<jsp:include page="/jqobj/jq3.jsp" ></jsp:include>
		</div>
		
		<div id='footer_div'>
			Footer content
		</div>
	</div>
</body>

</html>