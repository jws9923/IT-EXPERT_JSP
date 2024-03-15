<%-- response.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" %>
<%! static long count = 0; /*인스턴스 변수 선언*/%>
<%
	String value = null;
	String httpVersion = request.getProtocol();
	if( httpVersion.equals("HTTP/1.0")) {
		response.setDateHeader("Expires", 0); /* epoch 즉, 70년 1월 1일 00시 00분 00초*/
		response.setHeader("Pragma", "no-cache");
	} else if(httpVersion.equals("HTTP/1.1")) {
		response.setHeader("Cache-Control", "no-cache");
	}
	count++;
%>
<HTML>
<BODY>
방문횟수: <%=count %>
</BODY>
</HTML> 