<%@ page pageEncoding="MS949" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<fmt:setLocale value="ko"/>
<sql:query var="emp"
        dataSource="jdbc/myORCL">
    SELECT  EMPNO AS �����ȣ, ENAME AS �̸�,
            SAL AS ���޿�, HIREDATE AS �Ի���
    FROM EMP
</sql:query>

<table border="1">
  <tr>
<%-- �ʵ��� ������ ����Ѵ�.            --%>
  <c:forEach var="columnName" items="${emp.columnNames}">
    <th><c:out value="${columnName}"/></th>
  </c:forEach>

<%-- �����͸� �� �پ� ����Ѵ�.         --%>
  <c:forEach var="row" items="${emp.rowsByIndex}">
    <tr>
<%-- �ʵ��� ���̸�ŭ �ݺ��Ѵ�.          --%>
      <c:forEach var="column" items="${row}" varStatus="i">
        <c:choose>
          <c:when test="${i.index==3}">
      <td><fmt:formatDate value="${column}" pattern="yyyy/MM/dd"/></td>
          </c:when>
          <c:otherwise>
      <td><c:out value="${column}"/></td>
          </c:otherwise>
        </c:choose>
      </c:forEach>
  </c:forEach>
</table>
<hr>
<table border="1">
  <c:forEach var="row" items="${emp.rows}">
  <tr>
    <td>��ȣ: <c:out value="${row['�����ȣ']}"/></td>
    <td>�̸�: <c:out value="${row['�̸�']}"/></td>
  </tr>
  </c:forEach>
</table>
