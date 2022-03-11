<%@ page contentType="text/html; charset=UTF-8" %>
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
	for(String p : pets) {
		out.print(p+"<br>");
	}
%>
</body>
</html>