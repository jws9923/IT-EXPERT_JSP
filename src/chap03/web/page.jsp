<%-- page.jsp --%>
<HTML><BODY>
<%
	Servlet servlet = (Servlet)page;
	out.print(servlet.getServletInfo());
%>
</BODY></HTML>
