<%-- bind_login.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap05.LoginManager"%>
<%
	LoginManager loginManager = LoginManager.getInstance();
%>
<!-- Session ID : <%=session.getId()%> -->
<html>
<head>
<title>HttpSessionBindingListener �׽�Ʈ</title>
</head>
<body>
<h3>���� ������ �� : <%=loginManager.getUserCount()%> </h3>
<hr>
<%
	if ( loginManager.isLogin(session.getId()) ) {
%>
	<%=loginManager.getUserID(session.getId())%>�� �ȳ��ϼ���?
	<BR>
	<a href="bind_logout.jsp">�α׾ƿ�</a>
<%
	} else {
%>
<form name="login" action="bind_login_ok.jsp">
�� �� �� : <input type="text" name="userID"> <BR>
��й�ȣ : <input type="password" name="userPW"> <BR>
<input type="submit" value="�α���">
</form>
<%
	}
%>
</body>
</html>
