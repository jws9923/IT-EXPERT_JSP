<%-- errorTest.jsp --%>
<%@ page import="java.io.*" errorPage="/error.jsp" %>
<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title> ���� ������ �׽�Ʈ </title></head>
<body>
<%
	File f = new File("c:\\tmp\\test.txt"); 
	FileReader fr = new FileReader(f);
	BufferedReader br = new BufferedReader(fr);
	String line = null;
	while( (line = br.readLine()) != null) {
%>
	<%= line %>  <br>
<%
	}
%>
<body>
</html>
