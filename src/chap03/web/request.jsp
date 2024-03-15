<%-- request.jsp --%>
<%@page contentType="text/html;charset=euc-kr" import="java.util.*" %>
<%
	// 한글 인코딩
	request.setCharacterEncoding("euc-kr");
%>
<HTML><HEAD><TITLE>내장 객체 request </TITLE></HEAD>
<BODY><CENTER><H1>Request 정보 </H1></CENTER><HR> <BR>
<FONT SIZE="+1">
<H2> 파라미터 정보 </H2><P>
<%
	// 요청에 사용된 모든 파라미터 이름을 Enumeration으로 얻는다.
	Enumeration enum = request.getParameterNames();
	String name = "";
	String value = "";
	out.print("쿼리 문자열: " + request.getQueryString() + "<BR>");
	while(enum.hasMoreElements()) {
		name = (String)enum.nextElement();
		value= request.getParameter(name);
		out.print(name + " : " +  value + "<BR>");
	}
%>

<H2> HTTP 요청 헤더 정보 </H2><P>
<%
	// 내장 객체 request에는 URL을 구할 수 있는 메소드가 없다.
	out.print("Requested URL : " 	+ HttpUtils.getRequestURL(request) + "<BR>"); 
	out.print("Requested URI : " + request.getRequestURI() + "<BR>");
	out.print("요청 방식 : " + request.getMethod() + "<BR>");
 	// 클라이언트 요청에 포함된 HTTP 요청 헤더의 이름들을 Enumeration으로 얻는다.
	enum = request.getHeaderNames();
	while(enum.hasMoreElements()){
		name = (String)enum.nextElement();
		// 헤더명에 대한 값을 얻는다.
		value = request.getHeader(name);
		out.print(name + " : " + value + " <BR>");
	} 
%>

<H2> 세션 데이터 </H2> <P>
<%
	// 클라이언트 요청으로 인해 세션 객체가 생성되지 않은 경우 새로운 세션 객체를 생성하여 리턴한다.
	HttpSession mySession = request.getSession(true);
	// page 지시자의 session 속성이 true로 설정된 경우 getSession(..)이 리턴한 값은 내장 객체 session이다.
	// session 속성은 true가 기본값이다.
	if(mySession == session) {
		out.print("getSession()이 리턴한 값이 바로 내장 객체 session이다.<BR>");
	}
	out.print("Request Session 유효 : " +  request.isRequestedSessionIdValid() + "<BR>");
	out.print("Session 데이터로 쿠키 사용 여부 : " + 
	request.isRequestedSessionIdFromCookie() + "<BR>"); 
	out.print("Session 데이터로 URL 사용 여부 : " + 
	request.isRequestedSessionIdFromURL() + "<BR>"); 
	out.print("Requested Session Id: " + request.getRequestedSessionId() + "<BR>");
	out.print("Session ID : " + mySession.getId());
	

	Cookie [] cookies = request.getCookies();
	
	if ( cookies != null ) {
%>
<H2> 쿠키 정보 </H2><P>
<%
		for(int i = 0; i < cookies.length; i++) {
			out.print(cookies[i].getName() + ": " + cookies[i].getValue());
		}
	}
	
%>
</FONT>
</BODY>
</HTML>