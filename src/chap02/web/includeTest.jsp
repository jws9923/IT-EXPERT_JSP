<%-- includeTest.jsp --%>
<%@ page import="java.util.*, java.text.*" contentType="text/html;charset=euc-kr" %>
<HTML>
<HEAD><TITLE>Include Directive Test</TITLE></HEAD>
<BODY>
<%@ include file="header.jsp" %>
<Center>
<H3>관심있는 자바 테크놀로지 분야를 선택하세요</H3>
</CENTER>
<FORM>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="PRGM"> 자바 프로그래밍 언어 <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="JDBC"> JDBC <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="SERVLET"> 서블릿 & JSP <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="RMI"> RMI & JAVA IDL <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="EJB"> 엔터프라이즈 자바 빈즈(EJB) <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="SWING"> Java Swing <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="BEAN"> Java Beans <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="XML"> XML In Java <BR><BR>
     <INPUT TYPE="SUBMIT" NAME="TOPIC" VALUE="전송" >
</FORM>
<BR><BR>
<%@ include file="/footer.html" %>
</BODY>
</HTML>
