<%-- response.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" %>
<%! static long count = 0; /*�ν��Ͻ� ���� ����*/%>
<%
	String value = null;
	String httpVersion = request.getProtocol();
	if( httpVersion.equals("HTTP/1.0")) {
		response.setDateHeader("Expires", 0); /* epoch ��, 70�� 1�� 1�� 00�� 00�� 00��*/
		response.setHeader("Pragma", "no-cache");
	} else if(httpVersion.equals("HTTP/1.1")) {
		response.setHeader("Cache-Control", "no-cache");
	}
	count++;
%>
<HTML>
<BODY>
�湮Ƚ��: <%=count %>
</BODY>
</HTML> 