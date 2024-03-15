<%-- cookietest_1.jsp --%>
<%@page contentType="text/html;charset=euc-kr" %>
<%@page session="false" %>
<%
	Cookie colorCookie = null; 
	Cookie nameCookie = null;

	request.setCharacterEncoding("euc-kr");

	String name = request.getParameter("name");
	String bgcolor = request.getParameter("bgcolor");

	if(name == null) {
		name = "UnKnown";
	}
	if(bgcolor == null) {
		bgcolor = "WHITE";
	}
		
	nameCookie = new Cookie("myname", java.net.URLEncoder.encode(name));
	colorCookie = new Cookie("mybgcolor", bgcolor);
	colorCookie.setPath("/");
	response.addCookie(nameCookie);
	response.addCookie(colorCookie);
	
%>
<%-- 쿠키가 전송되지 않은 경우 배경색을 디폴트 white로 지정 --%>
<HTML><HEAD><TITLE>쿠키 테스트</TITLE></HEAD>
<BODY>
<H2>쿠키 테스트</H2>

		myname : <%=name%> <BR>
		
		mybgcolor : <%=bgcolor%> <BR>

<A HREF="cookietest_2.jsp"> Enter </A>
</BODY>
</HTML>