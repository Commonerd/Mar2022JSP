<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.Calendar" %>
<%
	Calendar cal = Calendar.getInstance();
	request.setAttribute("time", cal); /* 타임이라는 이름으로 캘린더 객체 저장 */
%>
<jsp:forward page="../to/viewTime.jsp" />
