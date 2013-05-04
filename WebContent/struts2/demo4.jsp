<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Demo title</title>
</head>

<body>
	<hr />
	Hello Demo!!

	<hr />
	Name::<s:property value="name"/>
	
	
	<hr />STATIC METHOD DEMO::<br />
	VS::<s:property value="@vs@USER"/><br />
	STATICWAY::<s:property value="@in.async.common.util.Util@DEFAULT" />
</body>
</html>