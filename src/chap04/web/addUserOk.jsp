<!--
IT Expert JSP  4�� 
addUserOk.jsp
-->


<%@ page contentType="text/html;charset=euc-kr" import="itexpert.chap04.*"%>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="userInfo" class="itexpert.chap04.UserInfo" scope="page"/>
<jsp:setProperty name="userInfo" property="*"/>


<h2> �Է��Ͻ� ȸ������ �Դϴ�. </h2>
���̵� : <jsp:getProperty name="userInfo" property="userId"/> <BR>
��й�ȣ : <jsp:getProperty name="userInfo" property="userPass"/> <BR>
�̸� : <jsp:getProperty name="userInfo" property="userName"/> <BR>
�ֹε�Ϲ�ȣ : <jsp:getProperty name="userInfo" property="regNum"/> <BR>
�̸��� : <jsp:getProperty name="userInfo" property="userEmail"/> <BR>
�ּ� : <jsp:getProperty name="userInfo" property="userAddr"/> <BR>
��ȭ��ȣ : <jsp:getProperty name="userInfo" property="userTel"/> <BR>
<% 
  // getAge()�� -1 �̸� �ֹε�Ϲ�ȣ�� ��Ȯġ �������̹Ƿ� ������� �ʴ´�.
  if ( userInfo.getAge() != -1 ) {
%>
���� : <jsp:getProperty name="userInfo" property="age"/> <BR>
<%
  }
%>