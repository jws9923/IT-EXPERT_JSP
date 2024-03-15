<%-- request.jsp --%>
<%@page contentType="text/html;charset=euc-kr" import="java.util.*" %>
<%
	// �ѱ� ���ڵ�
	request.setCharacterEncoding("euc-kr");
%>
<HTML><HEAD><TITLE>���� ��ü request </TITLE></HEAD>
<BODY><CENTER><H1>Request ���� </H1></CENTER><HR> <BR>
<FONT SIZE="+1">
<H2> �Ķ���� ���� </H2><P>
<%
	// ��û�� ���� ��� �Ķ���� �̸��� Enumeration���� ��´�.
	Enumeration enum = request.getParameterNames();
	String name = "";
	String value = "";
	out.print("���� ���ڿ�: " + request.getQueryString() + "<BR>");
	while(enum.hasMoreElements()) {
		name = (String)enum.nextElement();
		value= request.getParameter(name);
		out.print(name + " : " +  value + "<BR>");
	}
%>

<H2> HTTP ��û ��� ���� </H2><P>
<%
	// ���� ��ü request���� URL�� ���� �� �ִ� �޼ҵ尡 ����.
	out.print("Requested URL : " 	+ HttpUtils.getRequestURL(request) + "<BR>"); 
	out.print("Requested URI : " + request.getRequestURI() + "<BR>");
	out.print("��û ��� : " + request.getMethod() + "<BR>");
 	// Ŭ���̾�Ʈ ��û�� ���Ե� HTTP ��û ����� �̸����� Enumeration���� ��´�.
	enum = request.getHeaderNames();
	while(enum.hasMoreElements()){
		name = (String)enum.nextElement();
		// ����� ���� ���� ��´�.
		value = request.getHeader(name);
		out.print(name + " : " + value + " <BR>");
	} 
%>

<H2> ���� ������ </H2> <P>
<%
	// Ŭ���̾�Ʈ ��û���� ���� ���� ��ü�� �������� ���� ��� ���ο� ���� ��ü�� �����Ͽ� �����Ѵ�.
	HttpSession mySession = request.getSession(true);
	// page �������� session �Ӽ��� true�� ������ ��� getSession(..)�� ������ ���� ���� ��ü session�̴�.
	// session �Ӽ��� true�� �⺻���̴�.
	if(mySession == session) {
		out.print("getSession()�� ������ ���� �ٷ� ���� ��ü session�̴�.<BR>");
	}
	out.print("Request Session ��ȿ : " +  request.isRequestedSessionIdValid() + "<BR>");
	out.print("Session �����ͷ� ��Ű ��� ���� : " + 
	request.isRequestedSessionIdFromCookie() + "<BR>"); 
	out.print("Session �����ͷ� URL ��� ���� : " + 
	request.isRequestedSessionIdFromURL() + "<BR>"); 
	out.print("Requested Session Id: " + request.getRequestedSessionId() + "<BR>");
	out.print("Session ID : " + mySession.getId());
	

	Cookie [] cookies = request.getCookies();
	
	if ( cookies != null ) {
%>
<H2> ��Ű ���� </H2><P>
<%
		for(int i = 0; i < cookies.length; i++) {
			out.print(cookies[i].getName() + ": " + cookies[i].getValue());
		}
	}
	
%>
</FONT>
</BODY>
</HTML>