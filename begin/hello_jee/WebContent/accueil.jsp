<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:directive.page import="ch03.FaqCategories,ch03.User" errorPage="WEB-INF/errorPage.jsp" />
<html>
	<head>
		<title>Page d'accueil</title>
	</head>
	<body>
		<jsp:scriptlet>
		User user = (User)session.getAttribute("user");
		if(user == null) {
		</jsp:scriptlet>
			Vous n'êtes pas enregistré, merci de vous <a href="registrationForm.jsp">enregistrer</a>
		<jsp:scriptlet>
		} else {
			</jsp:scriptlet>
			<jsp:setProperty name="user" property="uname"/>
			<jsp:setProperty name="user" property="fname"/>
			<i>logged on <%=user.getUname()%>/<%=user.getFname()%></i><br>
			<i>my path : <%=request.getPathInfo()%></i>
			<jsp:scriptlet>
			
			for(String cat : new FaqCategories().getAllCategories()) {
		</jsp:scriptlet>
		<h1><a href="<%=replaceUnderscore(cat)%>.jsp"><jsp:expression>cat</jsp:expression></a></h1>
		<jsp:scriptlet>
			}
		}
		</jsp:scriptlet>
		<jsp:declaration>
		public String replaceUnderscore(String s) {
				return s.replace(" ", "_");
		}
		</jsp:declaration>
		
		<jsp:directive.include file="WEB-INF/footer.jspf" />
	</body>
</html>