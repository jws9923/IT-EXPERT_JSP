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
	/* System.currentTimeMillis()�� �����ϴ� long�� ������ 
	���� Ŭ������ ����Ͽ� Long�� ������Ʈ�� ��ȯ�Ͽ� �����Ѵ�. */
	session.setAttribute("login.time", new Long(System.currentTimeMillis()));
%>
<HTML><HEAD><TITLE> HttpSession ...</TITLE></HEAD>
<BODY>
<CENTER><H3>�ȳ��ϼ��� <%=name %> ��</H3></CENTER>
<A HREF="showinfo.jsp"> �α��� ���� ����</A>
</BODY>
</HTML>
