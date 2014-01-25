<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="cssjs.jsp" %>
</head>
<%-- <%@ include file="cache.jsp" %> --%>
<%
	Boolean auth = (Boolean)session.getAttribute("AUTH");
	if(null != auth && auth) {
		response.sendRedirect("inbox.jsp");
	}
%>

<body>
<!-- <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload=""> -->
	<form action='/gweb/login.do' method="post">
		FNAME::<input type="text" name='fname'><br />
		PASSWORD::<input type="text" name='password'><br />
		<input type='submit'/>
	</form>		
</body>


</html>