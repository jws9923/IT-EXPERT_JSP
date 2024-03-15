<%--sessionlogin.jsp --%>
<%@page contentType="text/html;charset=euc-kr" session="false" %>
<%	
	request.setCharacterEncoding("euc-kr");
	
	HttpSession session = request.getSession(true);
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	session.setAttribute("login.name", name);
	session.setAttribute("login.id", id);
	session.setAttribute("login.passwd", passwd);
	/* System.currentTimeMillis()가 리턴하는 long형 정수를 
	래퍼 클래스를 사용하여 Long형 오브젝트로 변환하여 저장한다. */
	session.setAttribute("login.time", new Long(System.currentTimeMillis()));
%>
<HTML><HEAD><TITLE> HttpSession ...</TITLE></HEAD>
<BODY>
<CENTER><H3>안녕하세요 <%=name %> 님</H3></CENTER>
<A HREF="showinfo.jsp"> 로그인 정보 보기</A>
</BODY>
</HTML>
