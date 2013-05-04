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
	<hr />
	
	Static and dynamic List::<br />
	<s:select name='sdlist' label="DynamicListUsingList" list="list" headerKey="" headerValue="--Select--"/> <br />
	<s:select name='sslist' label="StaticListUsingList" list="{'i', 'me', 'main'}" headerKey="" headerValue="--Select--"/> <br />
	<s:select name='sdlist' label="DynamicListUsingMap" list="map" headerKey="" headerValue="--Select--"/> <br />
	<s:select name='sdlist' label="DynamicListUsingMap" list="#{'java':'oops', 'c++':'lafore'}" headerKey="" headerValue="--Select--"/> <br />
	
	<hr />
	Control Tag Demo::if-elseif-else <br />
	<s:if test="name1 != null && name1.equalsIgnoreCase('java')"> <%--name1 will never be set: so always null --%>
		Inside if<s:property value='name1' />
	</s:if>
	<s:elseif test="%{'raj'.length() == 3}">
		Using expresssion tags here::RAJ
	</s:elseif>
	<s:elseif test="name != null && name.equals('javaa')">
		Inside Elseif::<s:property value='name'/>
	</s:elseif>
	<s:elseif test="list != null && list.size()>0 ">
		InsideElseif::with list. 
	</s:elseif>
	<s:else>
		<s:property value="blah" default="default value at else." />
	</s:else>
	
	<hr />
	Control-Tag::ITERATOR-DEMO<br />
	<s:iterator var="itr" status="sItr" value="list">
		<s:property value='#itr'/>
		<s:property value='#sItr.even'/>
		<br />
	</s:iterator>
	
	<s:iterator var="itr" status="sItr" value="map">
		<s:property value='#itr.value'/> <%--Since it is map try ds::#itr::#itr.key::#itr.value --%>
		<s:property value='#sItr.even'/>
		<br />
	</s:iterator>
	
	<hr />
	Control-Tag::Append-Demo::Merge-Demo::Generator-Demo<br />
	
	
</body>
</html>