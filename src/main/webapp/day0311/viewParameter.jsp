<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@page import="java.util.Enumeration"%>

<!DOCTYPE html>
<html>
<head>
<title>요청 파라미터 출력</title>
</head>
<body>
<b> request.getParameter() 사용</b><br>
name파라미터 : <%= request.getParameter("name") %><br>
address파라미터 : <%= request.getParameter("address") %>
<br>
<p>
<b>request.getParameterValues() 사용</b>
<%
	String[] pets = request.getParameterValues("pet");

if(pets != null){
for(String p : pets) {
		out.print(p+"<br>");
	}
}
%>
</p>
<p>
<b>request.getParameterNames()사용</b><br>
<%
	Enumeration<String> names = request.getParameterNames();
	while(names.hasMoreElements()){
		out.print(names.nextElement()+"<br>");	
	}
%>
</p>
<p>
<b>request.getParameterMap() 사용</b><br>
<% Map<String, String[]> map = request.getParameterMap();
	String[] n = map.get("name");
	if(n != null){
		out.print("이름:"+n[0]);
	}
%>
</body>
</html>