<%-- bind_login_ok.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap05.LoginManager"%>
<%
	request.setCharacterEncoding("euc-kr");

	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");

	LoginManager loginManager = LoginManager.getInstance();

	// ID �� PW �� ��Ȯ���� �˻�
	if (  loginManager.isValid(userID,userPW) ) {

		// �̹� ������� ���̵� ���� �˻� (�ߺ��α��ι���)
		if ( !loginManager.isUsing(userID) ) {
			loginManager.setSession(session, userID);
			response.sendRedirect("bind_login.jsp");
		} else {
			throw new Exception("�̹� �α����ϼ̽��ϴ�.");
		}

	} else {
		throw new Exception("ID/PW �� �߸��Ǿ����ϴ�.");
	}
%>
