<%@ page import="java.sql.DriverManager,
                 java.sql.Connection,
                 java.sql.Statement,
                 java.sql.ResultSet,
                 java.sql.SQLException"%>
<%
response.setContentType("text/html;");
// ����̹��� �ε��Ѵ�.
Class.forName("oracle.jdbc.driver.OracleDriver");
String DB_URL = "jdbc:oracle:thin:@localhost:1521:ORCL";
String DB_USER = "scott";
String DB_PASSWORD= "tiger";

Connection conn= null;
Statement stmt = null;
ResultSet rs   = null;

try {
    // Connection �� �����´�.
    conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);

    // Statement �� �غ�
    stmt = conn.createStatement();

    // ResultSet �����ͼ� ó��
    String query =
        "SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO FROM EMP";
    rs = stmt.executeQuery(query);
%><table border="1" cellspacing="0">
<tr>
<td>No</td>
<td>Name</td>
<td>Job</td>
<td>Mgr</td>
<td>hire date</td>
<td>Sal</td>
<td>Comm</td>
<td>dept no</td>
</tr>
<%
    while(rs.next()) {
%><tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getDate(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
</tr>
<%
    } // end while
%></table><%
    // ResultSet ����
    rs.close();

    // Statement ����
    stmt.close();

} catch (SQLException e) {
    out.println("err:"+e.toString());
} finally {
    // Connection ����
    conn.close();
}
%>