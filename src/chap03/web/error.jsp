<%-- error.jsp --%>
<%@page isErrorPage="true" contentType="text/html; charset=euc-kr" %>
<%@page import="java.io.*" %>
<%
	/* true: error.log ������ ����� �ʰ� append ���� �����Ѵ�. ��, tmp���丮�� �̹� �����Ǿ� �־�� �Ѵ�. */
	FileWriter fw = new FileWriter("c:\\tmp\\error.log", true);

	 /* true: automatic flush �� ���۰� ���� ���� �ڵ����� flush�Ѵ�.*/
	PrintWriter pw = new PrintWriter(fw, true);
	exception.printStackTrace(pw);
	pw.close(); 
%>
<html>
<head><title>������ �����ϴ�.</title></head>
<body>
<h1>������ �����ϴ�!</h1><hr>
����: <%= exception.getMessage() %>
</body>
</html>
