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

<hr />Action ERROS::<br />
<s:if test="hasActionErrors()">
	<s:actionerror />
</s:if>


<hr />Action Messages::<br /> 
<s:if test="hasActionMessages()">
	<s:actionmessage />
</s:if>

<hr />Action Field Errors::<br />
<s:if test="hasFieldErrors()">
	<s:fielderror />
</s:if>	
	
<hr />Action Individual Field Error::<br/>	
<s:if test="hasFieldErrors()">
	<s:fielderror fieldName="name" />
	<s:fielderror fieldName="uname" />
</s:if>	
	
</body>
</html>