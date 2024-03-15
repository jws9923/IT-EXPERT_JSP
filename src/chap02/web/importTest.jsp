<%-- importtest.jsp --%>
<%@ page import="java.util.*, java.text.SimpleDateFormat" contentType="text/html;charset=euc-kr" %>
<html>
<head><title> import Attribute Test</title></head>
<body align="center" >
<h2>요청 된 날짜와 시간은 <%= new SimpleDateFormat().format(new Date()) %> 
입니다 </h2>
</body>
</html>
