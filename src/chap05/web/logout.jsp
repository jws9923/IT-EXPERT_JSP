<%-- logout.jsp --%>
<%@page session="false" contentType="text/html;charset=euc-kr" %>
<%
	HttpSession session = request.getSession(false);
	String name = "";
	if(session != null) {
		name = (String)session.getAttribute("login.name");
		session.invalidate();
	}
%>
<H3> <%=name%> �α׾ƿ� ó�� �Ǿ����ϴ�.</H3>

...
<A HREF="showinfo.jsp"> �α� ���� ����</A>
...
