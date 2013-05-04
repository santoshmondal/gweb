Decoding OGNL Expression Small Notes
First of all consider the following points::
1. Struts TAGS
2. Attributes of the TAGS, and keep your eyes open on what is the type of the attribute. (Check stuts2 docs the type of the attribute.)
3. Types are classified mainly here in String and Non-String Attribute.

For Example::
	<s:textfield name='' value='' />
   	The above tag, textfield has two attribute. The type for the name attribute is String and the type for the value attribute is Object.
   	
   	<s:property value='' />
   	The above tag, showing only one attribute. And the type is Object. 
   	
Now, come to the topic of OGNL expression. Lets start with tag with attribute of type String.
Syntax-1   	
	<s:textfield name='uname' label='uname' />
	It gives you access only the static data. 
	In the example and in the name attribute no struts expression has been used. The name field will contains the value uname. 
	
Syntax-2
	<s:textfield name='%{uname}' label='uname' />
	<s:textfield name='%{#uname}' label='uname' />
	It gives you access to the dynamic data. 
	In the example and in the name attribute the struts expression has been used. An the name field now has dynamic value. 
	As %{uname} will be parsed. And the value will be restored from the value stack or context.
	The first will look into the value stack and the second will look into the context map.
	
	 
	
Now, Tag with attribute of type Oject. 
Syntax-1
	<s:property value='uname' />
	It provides the dynamic first. 
	As the type of value attribute is object. uname is looked up in OGNL or context map. 
	
Syntax-2
	<s:property value='%{"somevalue"}' />
	If you wanna to provide some static data or data to be evaluated use the struts expression. 
