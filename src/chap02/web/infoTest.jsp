<%-- infotest.jsp --%>
<%@ page contentType="text/html;charset=euc-kr" info="info 속성 테스트 페이지 :: 작성자 - 이선재" %>
<%
	String servletInfo = getServletInfo();
%>
<pre>
<%=servletInfo%>
</pre>