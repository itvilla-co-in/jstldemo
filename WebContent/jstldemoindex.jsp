<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>demo of cout tag </h1>
<c:out value="${'hello Firend'}"/>
</br>
<%! String name = null; %>
<c:out value="${name}" default="this is default string if value is null"/>
</br>  

<h1>demo of set tag</h1>
<c:set var = "pagecount" scope = "session" value = "1000"/>
      <p>Before removing: <c:out value = "${pagecount }"/></p>
         <c:remove var = "pagecount"/>
      <p>After removing: <c:out value = "${pagecount }"/></p>





<h1>demo of choose  tag </h1>
<c:set var = "lang" scope = "session" value = "JSP"/>
<p>Value of lang before choose loop <c:out value = "${lang}"/></p>
<c:choose>
    <c:when test="${lang == 'Java'}">
    I love Java
    </c:when>
    <c:when test="${lang == 'JSP'}">
    I love JSP
    </c:when>
    <c:otherwise>
    I love English
    </c:otherwise>
</c:choose>





<h1>demo of tocketn cout</h1>
<c:forTokens items="http://.www.google.com" delims="." var="temp">

${temp }
<br/>

</c:forTokens>

<h1>demo of for each 1</h1>
<c:forEach var="i" begin="0" end="10">

Value of i : <c:out value="${i}"/>
<br/>
</c:forEach>

<h1>demo of for each 2</h1>
 <%
 
String[] names = new String[3];
names[0] = "Ron";
names[1] = "John";
names[2] = "Mike";
 %>


<c:forEach var="temp" items="<%=names %>">

${temp}
<br/>
</c:forEach>


<h1>demo of for import</h1>
<c:import var="myimport" url="/jstldemowelcome.jsp"/>
<c:out value="${myimport}"/>

<h1>demo of for url and param</h1>
<c:url value="/jstldemodisplay.jsp" var="completeURL">
 <c:param name="username" value="naren"/>
 <c:param name="code" value="1234"/>
</c:url>
<c:out value="${completeURL}"/>

<h1>demo of for redirect and param</h1>

<% 
// this code is kept comment to see redirection uncomment and run
//<c:redirect url="/jstldemodisplay.jsp" >
 //<c:param name="username" value="Narendar"/>
 //<c:param name="city" value="pune"/>
//</c:redirect>
//${completeURL}
%>





</body>
</html>