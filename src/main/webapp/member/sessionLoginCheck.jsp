<%@ page contentType = "text/html; charset=utf-8" %>
<%
	String memberId = (String)session.getAttribute("MEMBERID"); //세션에 저장된 값 꺼내옴. 없으면 널, 있으면 로그인 성공 iD값. 
	boolean login = memberId == null ? false : true;
%>
<html>
<head><title>로그인여부 검사</title></head>
<body>

<%
	if (login) {
%>
아이디 "<%= memberId %>"로 로그인 한 상태
<!-- out.print("아이디"+ memberId+"로 로그인 한 상태") -->
<%
	} else {
%>
로그인하지 않은 상태
<%
	}
%>
</body>
</html>



