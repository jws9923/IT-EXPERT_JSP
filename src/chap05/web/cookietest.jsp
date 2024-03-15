<%-- cookietest.jsp --%>
<%@page import="java.util.*" contentType="text/html;charset=euc-kr" %>
<%@page session="false" %>
<%
	String value = request.getHeader("Cookie");
	String bgcolor = "white";
	Vector cookies = new Vector();
	if(value == null) {/* 요청에 포함된 쿠키가 없을 경우 쿠키 2개를 설정*/
		response.addHeader("Set-Cookie", "myname=Netie");
		response.addHeader("Set-Cookie", "mybgcolor=green; Path=/");
	} else {/* 요청 헤더에 쿠키가 포함되어있으면 */
		StringTokenizer st = 
		new StringTokenizer(value, ";");
		while(st.hasMoreTokens()) {
			String cookie = st.nextToken();
			cookies.addElement(cookie);
			if(cookie.indexOf("mybgcolor") != -1){ /* mybgcolor 쿠키가 포함된경우 */
				int index = cookie.indexOf("=");
				bgcolor = cookie.substring(index + 1); /* green 값을 얻는다. */
			} 
		} 
	} 
%>
<%-- 쿠키가 전송되지 않은 경우 배경색을 디폴트 white로 지정 --%>
<HTML><HEAD><TITLE>쿠키 테스트</TITLE></HEAD>
<BODY BGCOLOR="<%= bgcolor %>">
<H2>쿠키 테스트</H2>
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
