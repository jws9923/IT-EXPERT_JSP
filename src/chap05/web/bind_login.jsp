<%-- bind_login.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap05.LoginManager"%>
<%
	LoginManager loginManager = LoginManager.getInstance();
%>
<!-- Session ID : <%=session.getId()%> -->
<html>
<head>
<title>HttpSessionBindingListener 테스트</title>
</head>
<body>
<h3>현재 접속자 수 : <%=loginManager.getUserCount()%> </h3>
<hr>
<%
	if ( loginManager.isLogin(session.getId()) ) {
%>
	<%=loginManager.getUserID(session.getId())%>님 안녕하세요?
	<BR>
	<a href="bind_logout.jsp">로그아웃</a>
<%
	} else {
%>
<form name="login" action="bind_login_ok.jsp">
아 이 디 : <input type="text" name="userID"> <BR>
비밀번호 : <input type="password" name="userPW"> <BR>
<input type="submit" value="로그인">
</form>
<%
	}
%>
</body>
</html>
