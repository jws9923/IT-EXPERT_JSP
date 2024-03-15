<%@ page import="java.sql.Connection,
                 java.sql.Statement,
                 java.sql.ResultSet,
                 java.sql.SQLException,
                 itexpert.chap07.Util" %>
<jsp:useBean id="dc" class="itexpert.chap07.DbCon"/>
<%
response.setContentType("text/html;");

Connection conn= null;
Statement stmt = null;
ResultSet rs   = null;

try {
    // Connection 을 가져온다.
    conn = dc.getConnection();

    // Statement 를 준비
    stmt = conn.createStatement();

    // ResultSet 가져와서 처리
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
<td><%=Util.nullChk(rs.getString(4), "&nbsp;")%></td>
<td><%=rs.getDate(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=Util.nullChk(rs.getString(7), "&nbsp;")%></td>
<td><%=rs.getString(8)%></td>
</tr>
<%
    } // end while
%></table><%
    // ResultSet 종료
    rs.close();

    // Statement 종료
    stmt.close();

} catch (SQLException e) {
    out.println("err:"+e.toString());
} finally {
    // Connection 종료
    conn.close();
}
%>