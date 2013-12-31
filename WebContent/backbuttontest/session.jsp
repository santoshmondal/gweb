<%
	Boolean auth = (Boolean)session.getAttribute("AUTH");
	if(null == auth || auth == false) {
		response.sendRedirect("login.jsp");
	}
%>
