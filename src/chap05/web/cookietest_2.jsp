<%-- cookietest_2.jsp --%>
<%@page contentType="text/html;charset=euc-kr" %>
<%@page session="false" %>
<%
	Cookie colorCookie = null; 
	Cookie nameCookie = null;
	Cookie [] cookies = request.getCookies();
	if ( cookies != null ) {
		for(int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("mybgcolor")) {
				colorCookie = cookies[i];
					continue;
			} else if(cookies[i].getName().equals("myname")) {
				nameCookie = cookies[i];
				continue;
			}
		} 
	}
%>
<HTML>
<BODY BGCOLOR="<%= colorCookie == null ? "White": colorCookie.getValue()%>">
<H2>æ»≥Á«œººø‰ <%= java.net.URLDecoder.decode(nameCookie.getValue())%> ¥‘ </H2>
</BODY>
</HTML>
