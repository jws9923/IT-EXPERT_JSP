<%-- includeTest.jsp --%>
<%@ page import="java.util.*, java.text.*" contentType="text/html;charset=euc-kr" %>
<HTML>
<HEAD><TITLE>Include Directive Test</TITLE></HEAD>
<BODY>
<%@ include file="header.jsp" %>
<Center>
<H3>�����ִ� �ڹ� ��ũ����� �о߸� �����ϼ���</H3>
</CENTER>
<FORM>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="PRGM"> �ڹ� ���α׷��� ��� <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="JDBC"> JDBC <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="SERVLET"> ���� & JSP <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="RMI"> RMI & JAVA IDL <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="EJB"> ������������ �ڹ� ����(EJB) <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="SWING"> Java Swing <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="BEAN"> Java Beans <BR>
<INPUT TYPE="RADIO" NAME="JAVA" VALUE="XML"> XML In Java <BR><BR>
     <INPUT TYPE="SUBMIT" NAME="TOPIC" VALUE="����" >
</FORM>
<BR><BR>
<%@ include file="/footer.html" %>
</BODY>
</HTML>
