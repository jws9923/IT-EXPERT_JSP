<%-- error.jsp --%>
<%@page isErrorPage="true" contentType="text/html; charset=euc-kr" %>
<html>
<head><title>������ �����ϴ�.</title></head>
<body>
<h1>������ �����ϴ�!</h1><hr>
����: <%= exception.getMessage() %>
</body>
</html>
