<%-- error.jsp --%>
<%@page isErrorPage="true" contentType="text/html; charset=euc-kr" %>
<html>
<head><title>파일이 없습니다.</title></head>
<body>
<h1>파일이 없습니다!</h1><hr>
내용: <%= exception.getMessage() %>
</body>
</html>
