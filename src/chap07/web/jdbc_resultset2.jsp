<%@ page import="itexpert.chap07.SqlTable"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
// ������ ����
String query1 = "SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO FROM EMP";
String query2 = "SELECT EMPNO AS �����ȣ, ENAME AS �̸�, SAL AS ���޿�, HIREDATE AS �Ի��� FROM EMP";

// ��� �޼ҵ� ȣ��(����1, out)
SqlTable.printTable(query1, out);
// ��� �޼ҵ� ȣ��(����2, out)
SqlTable.printTable(query2, out);
%>
