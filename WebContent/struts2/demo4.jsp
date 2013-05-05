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
	Name::
	<s:property value="name" />


	<hr />
	STATIC METHOD DEMO::
	<br /> VS::
	<s:property value="@vs@USER" />
	<br /> STATICWAY::
	<s:property value="@in.async.common.util.Util@DEFAULT" />



	<s:select name='name' list="{'java', 'jsp', 'servlet'}"/>


	<s:form action="login.action">
		<s:updownselect
			list="#{'england':'England', 'america':'America', 'germany':'Germany'}"
			name="prioritisedFavouriteCountries" headerKey="-1"
			headerValue="--- Please Order Them Accordingly ---"
			emptyOption="true" />

		<s:inputtransferselect label="Favourite Cartoons Characters"
			name="cartoons" list="{'Popeye', 'He-Man', 'Spiderman'}" />


		<s:optiontransferselect label="Favourite Cartoons Characters"
			name="leftSideCartoonCharacters"
			list="{'Popeye', 'He-Man', 'Spiderman'}"
			doubleName="rightSideCartoonCharacters"
			doubleList="{'Superman', 'Mickey Mouse', 'Donald Duck'}" />

		<s:checkbox label="checkbox test" name="checkboxField1"
			value="bool" fieldValue="true" />

		<s:select name="username" label="Username"
			list="{'Mike','John','Smith'}" />

		<s:select label="Company Office" name="mySelection"
			value="%{'America'}" list="%{#{'America':'America'}}">
			<s:optgroup label="Asia" list="%{#{'India':'India','China':'China'}}" />
			<s:optgroup label="Europe"
				list="%{#{'UK':'UK','Sweden':'Sweden','Italy':'Italy'}}" />
		</s:select>

		<s:combobox label="My Sign" name="mySign"
			list="#{'aries':'aries','capricorn':'capricorn'}" headerKey="-1"
			headerValue="--- Please Select ---" emptyOption="true" />
		<s:doubleselect label="Occupation" name="occupation"
			list="{'Technical','Other'}" doubleName="occupations2"
			doubleList="top == 'Technical' ? 
         {'I.T', 'Hardware'} : {'Accounting', 'H.R'}" />

		<s:combobox label="My Favourite Color" name="myFavouriteColor"
			list="#{'red':'red','green':'green','blue':'blue'}" headerKey="-1"
			headerValue="--- Please Select ---" emptyOption="true" value="green" />

	</s:form>
</body>
</html>