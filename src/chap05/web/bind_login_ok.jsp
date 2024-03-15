<%-- bind_login_ok.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap05.LoginManager"%>
<%
	request.setCharacterEncoding("euc-kr");

	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");

	LoginManager loginManager = LoginManager.getInstance();

	// ID 와 PW 이 정확한지 검사
	if (  loginManager.isValid(userID,userPW) ) {

		// 이미 사용중인 아이디 인지 검사 (중복로그인방지)
		if ( !loginManager.isUsing(userID) ) {
			loginManager.setSession(session, userID);
			response.sendRedirect("bind_login.jsp");
		} else {
			throw new Exception("이미 로그인하셨습니다.");
		}

	} else {
		throw new Exception("ID/PW 이 잘못되었습니다.");
	}
%>
