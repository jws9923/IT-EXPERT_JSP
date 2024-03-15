<!--
IT Expert JSP  4장 
addUserOk.jsp
-->


<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap04.*"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="userInfo" class="itexpert.chap04.UserInfo" scope="page"/>
<jsp:setProperty name="userInfo" property="*"/>


<h2> 입력하신 회원정보 입니다. </h2>
아이디 : <jsp:getProperty name="userInfo" property="userId"/> <BR>
비밀번호 : <jsp:getProperty name="userInfo" property="userPass"/> <BR>
이름 : <jsp:getProperty name="userInfo" property="userName"/> <BR>
주민등록번호 : <jsp:getProperty name="userInfo" property="regNum"/> <BR>
이메일 : <jsp:getProperty name="userInfo" property="userEmail"/> <BR>
주소 : <jsp:getProperty name="userInfo" property="userAddr"/> <BR>
전화번호 : <jsp:getProperty name="userInfo" property="userTel"/> <BR>
<% 
  // getAge()가 -1 이면 주민등록번호가 정확치 않은것이므로 출력하지 않는다.
  if ( userInfo.getAge() != -1 ) {
%>
나이 : <jsp:getProperty name="userInfo" property="age"/> <BR>
<%
  }
%>