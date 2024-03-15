<%-- attribute.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" import="java.util.Enumeration" %>
<HTML><HEAD><TITLE>������ �Ӽ�</TITLE></HEAD>
<BODY>
<H2>���� ��ü�� �Ӽ��� �˾� ���ô�.</H2>
<B>Session Scope:</B><BR>
<%	/* ���� ������ ������ �Ӽ� �̸����� ��´�. session.getAttrubuteNames()�� ���� */
	Enumeration enum = pageContext.getAttributeNamesInScope(PageContext.SESSION_SCOPE);
/* ���� ������ ���� ������ ����� ��� �Ӽ��� �̸��� �Ӽ� ��ü�� ��´�. */
	while(enum.hasMoreElements()) {
		String name = (String)enum.nextElement();
		out.print(name + ": " + pageContext.getAttribute(name, PageContext.SESSION_SCOPE));
		out.print("<BR>");
	}
%>
<P>
<B>Application Scope:</B><BR>
<% 	/* application ������ ������ �Ӽ� �̸����� ��´�. application.getAttrubuteNames()�� ���� */
	enum = pageContext.getAttributeNamesInScope(PageContext.APPLICATION_SCOPE);
	/* ���� ������ application ������ ����� ��� �Ӽ��� �̸��� �Ӽ� ��ü�� ��´�. */
	while(enum.hasMoreElements()) {
		String name = (String)enum.nextElement();
		out.print(name + ": " +
		pageContext.getAttribute(name, PageContext.APPLICATION_SCOPE));
		out.print("<BR>");
	}
%>
<HR>
<%
	/* ���޵� ��û �Ķ���� name�� �ִ� ��� �̸� 'name'�̶�� �̸��� String �Ӽ����� �����Ѵ�. 
	��û �Ķ���ͷ� 'name'�� ���޵��� ���� ��� 'name' �Ӽ��� 'guest'�� �����Ѵ�. */
	if(session.isNew()) {
		String name = request.getParameter("name");
		if(name != null) {
			session.setAttribute("name", name);
		} else {
			 session.setAttribute("name", "guest");
		}
		session.setMaxInactiveInterval(3*60); /* 3�� ���� ��û�� ������ ���� ��ȿȭ */
%>
		<FONT COLOR="#0000FF"><%=session.getAttribute("name")%> </FONT>�� ������ ���۵Ǿ����ϴ�.
<%		
	} else {
		String name = (String)session.getAttribute("name");
%>
		<FONT COLOR="#0000FF"><%= name %></FONT>���� ������ �����ǰ� �ֽ��ϴ�.
<% 
	} 
	
%>
</BODY>
</HTML>