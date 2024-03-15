<%-- error.jsp --%>
<%@page isErrorPage="true" contentType="text/html; charset=euc-kr" %>
<%@page import="java.io.*" %>
<%
	/* true: error.log 파일을 덮어쓰지 않고 append 모드로 생성한다. 단, tmp디렉토리는 이미 생성되어 있어야 한다. */
	FileWriter fw = new FileWriter("c:\\tmp\\error.log", true);

	 /* true: automatic flush 즉 버퍼가 가드 차면 자동으로 flush한다.*/
	PrintWriter pw = new PrintWriter(fw, true);
	exception.printStackTrace(pw);
	pw.close(); 
%>
<html>
<head><title>파일이 없습니다.</title></head>
<body>
<h1>파일이 없습니다!</h1><hr>
내용: <%= exception.getMessage() %>
</body>
</html>
