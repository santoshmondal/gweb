<%@ taglib prefix="s" uri="/struts-tags" %>
NAME::<s:property value="name"/> <br />
UNAME::<s:property value='uname'/><br />

<br />This is when included::<br />
NAME::<%=request.getParameter("name") %><br/>
UNAME::<%=request.getParameter("uname") %>
 
