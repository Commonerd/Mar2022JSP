<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>1~10까지 합</title>
</head>
<body>
<%! public int sum(int a, int b){
		return a + b;
	}
%>

<%
	int sum = 0;
	for(int i = 1; i <= 10; i++){
		sum += i;
	}
	out.println("test");
	
%>
1~10까지 합 : <%= sum %><br>
1~10까지 합2 : <%= "1"+2+3+4+5+6+7+8+9+10 %>
1,10의 합 : <%= sum(1,10) %>
</body>
</html>