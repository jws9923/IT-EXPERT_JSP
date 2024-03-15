<%@ page import="itexpert.chap07.SqlTable"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
// 쿼리의 선언
String query1 = "SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO FROM EMP";
String query2 = "SELECT EMPNO AS 사원번호, ENAME AS 이름, SAL AS 월급여, HIREDATE AS 입사일 FROM EMP";

// 출력 메소드 호출(쿼리1, out)
SqlTable.printTable(query1, out);
// 출력 메소드 호출(쿼리2, out)
SqlTable.printTable(query2, out);
%>
