<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>if 태그</title></head>
<body>
<c:if test="true">
무조건 수행<br>
</c:if>

<c:if test="${param.name == 'bk'}">
<!-- 파라미터 값들을 모아둔 객체 안에서, name이라는 이름으로 전달된 값이 
bk와 같다면... 
전부 EL 안에서 처리중이다! 
연산식 EL 안에서 처리--> 
name 파라미터의 값이 ${param.name} 입니다.<br>
</c:if>

<c:if test="${18 < param.age}">
당신의 나이는 18세 이상입니다.
</c:if>
</body>
</html>


<%-- <%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>if 태그</title></head>
<body>
<c:if test="true">
무조건 수행<br>
</c:if>

<c:if test="${praram.name == 'bk' }">
name 파라미터 값이 $(param.name) 입니다.<br>
</c:if>

<c:if test="${ 18 < param.age }">
당신의 나이는 18세 이상입니다.
</c:if>
</body>
</html> --%>