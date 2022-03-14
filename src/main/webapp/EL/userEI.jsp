<%@ page contentType="text/html; charset=UTF-8" %>
<% 
	request.setAttribute("name","song");
	session.setAttribute("name","session_name");
%>
<!DOCTYPE html>
<html>
<head>
<title>EL</title>
</head>
<body>
request의 name속성 : ${name} <br>
session의 name속성 : ${sessionScope.name}<br>
<%-- <%  request.getAttribute("name") %> --%>
요청 uri : ${pageContext.request.requestURI}<br>
<%-- = pageContext.getRequest().getRequestURI %> --%>
code파라미터 : ${ param.code }<br> <!-- EL에서는 null값을 빈문자열("")로 바꿔서 출력한다. -->
code파라미터 : <%= request.getParameter("code") %> 

<!-- //param이라는 맵객체에 저장되어 있고,코드라는 이름 바로 꺼낼 수 있다. -->
</body>
</html>