<%@page import="java.util.*"%>
<%@page import="jstl.day0314.Member"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  Member m = new Member(); 
	Map<String, String> pref = new HashMap();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>set 코어태그</title>
</head>
<body>
	<c:set var="mem" value="<%= m %>"/>
	<c:set var="mem" value="<%= m %>"/>
	<c:set target="${mem}" property="name" value="su" />
	
	${mem.name}<br>
	
	<c:set var="pre" value="<%= pref %>" />
	<c:set var="favoriteColor" value="#{pre.color}" />
	
	좋아하는 색 : $ {favoriteColor}<br>
	<c:set target="${pre}" property="color" value="red"/>
	좋아하는 색2 : $ {favoriteColor}<br>
		
</body>
</html>










