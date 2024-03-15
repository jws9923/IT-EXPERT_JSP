<%@ page pageEncoding="MS949" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<fmt:setLocale value="ko"/>
<sql:query var="emp"
        dataSource="jdbc/myORCL">
    SELECT  EMPNO AS 사원번호, ENAME AS 이름,
            SAL AS 월급여, HIREDATE AS 입사일
    FROM EMP
</sql:query>

<table border="1">
  <tr>
<%-- 필드의 정보를 출력한다.            --%>
  <c:forEach var="columnName" items="${emp.columnNames}">
    <th><c:out value="${columnName}"/></th>
  </c:forEach>

<%-- 데이터를 한 줄씩 출력한다.         --%>
  <c:forEach var="row" items="${emp.rowsByIndex}">
    <tr>
<%-- 필드의 길이만큼 반복한다.          --%>
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
    <td>번호: <c:out value="${row['사원번호']}"/></td>
    <td>이름: <c:out value="${row['이름']}"/></td>
  </tr>
  </c:forEach>
</table>
