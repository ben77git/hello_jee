<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch03.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="accueil.jsp">
<jsp:useBean id="user" class="ch03.User" scope="session" />
Prénom : <input type="text" name="uname"/>
<br>
Nom : <input type="text" name="fname"/>
<br>
<input type="submit" value="OK" />
</form>
<%--<a href="accueil.jsp?uname=<jsp:getProperty name="user" property="uname"/>&fname=<jsp:getProperty name="user" property="fname"/>">
	<input type="submit" value="OK" />
</a> --%>

<%--<jsp:scriptlet> session.setAttribute("user", "ben");</jsp:scriptlet>
Vous allez être redirigé!!!
<jsp:forward page ="" />
 --%>
</body>
</html>