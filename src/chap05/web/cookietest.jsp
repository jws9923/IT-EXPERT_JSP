<%-- cookietest.jsp --%>
<%@page import="java.util.*" contentType="text/html;charset=euc-kr" %>
<%@page session="false" %>
<%
	String value = request.getHeader("Cookie");
	String bgcolor = "white";
	Vector cookies = new Vector();
	if(value == null) {/* ��û�� ���Ե� ��Ű�� ���� ��� ��Ű 2���� ����*/
		response.addHeader("Set-Cookie", "myname=Netie");
		response.addHeader("Set-Cookie", "mybgcolor=green; Path=/");
	} else {/* ��û ����� ��Ű�� ���ԵǾ������� */
		StringTokenizer st = 
		new StringTokenizer(value, ";");
		while(st.hasMoreTokens()) {
			String cookie = st.nextToken();
			cookies.addElement(cookie);
			if(cookie.indexOf("mybgcolor") != -1){ /* mybgcolor ��Ű�� ���ԵȰ�� */
				int index = cookie.indexOf("=");
				bgcolor = cookie.substring(index + 1); /* green ���� ��´�. */
			} 
		} 
	} 
%>
<%-- ��Ű�� ���۵��� ���� ��� ������ ����Ʈ white�� ���� --%>
<HTML><HEAD><TITLE>��Ű �׽�Ʈ</TITLE></HEAD>
<BODY BGCOLOR="<%= bgcolor %>">
<H2>��Ű �׽�Ʈ</H2>
<%
	for(int i = 0; i < cookies.size(); i++) {
		String cookie = (String) cookies.elementAt(i);
%>
		<%= cookie %> <BR>
<%
	}
%>
</BODY>
</HTML>
