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
	Hello Demo2 With DATA TAGS!!
	<hr />
	
	Name::<s:property value="name"/>
	<hr />
	
	DataTAG::Bean Refrence DEMO
	<s:bean name="in.async.struts2.demo.DataBean" var="objRef">
		<s:param name="fname" value="%{'java'}"/>
		<s:param name="lname" value="%{'core'}" />
	</s:bean>
	BeanReference::<s:property value="#objRef.fname"/>
	
	<hr />DATATAG::PUSH REFERENCE DEMO<br />
	<s:push value="#objRef">
		<s:property value='lname'/>
	</s:push>
	
	
	<hr />DATATAG::SET REFERENCE DEMO<br />
	<s:set var="simplified" value="#objRef.fname"></s:set>
	<s:property value="#simplified"/>
	
	
	<hr />DATATAG::Action REFERENCE DEMO<br />
	<s:action name="demo3" executeResult="true">
		<s:param name='name' value="%{'Name Param value'}" />
		<s:param name='uname' value="%{'UNAME Param value'}" />
	</s:action>
	
	
	<hr />DATATAG::INCLUDE REFERENCE DEMO<br />
	<s:include value="demo3.jsp">
		<s:param name="name" value='%{"jspname value"}'/>
		<s:param name="uname" value='%{"jsp uname value"}'/>
	</s:include>
	
	<hr />DATATAG::URL/A REFERENCE DEMO<br />
	<s:url action="demo3" var="refDemo3">
		<s:param name='uname' value='%{"Unamevalue"}' />
		<s:param name='name' value='%{"Namevalue"}' />
	</s:url>
	<s:a href="%{#refDemo3}">DEMO3 Anchor</s:a>	
	<br />
	<s:a action="demo3">DEMO32ndStyle</s:a>
	
	
	<hr />STATIC METHOD DEMO::<br />
	Static::<s:property value='@in.async.struts2.demo.StaticUtil@DEFAULT' /><br />
	SImplfied::<s:property value='#simplified'/>	
	
	
	<hr />DATATAG-DATE<br />
	<s:date name="now" format="dd-MM-yyyy"/>
	
</body>
</html>