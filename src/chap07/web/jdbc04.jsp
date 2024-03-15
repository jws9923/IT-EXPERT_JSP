<% long sTime = System.currentTimeMillis(); %>
<%@ page import="java.sql.Connection,
                 java.sql.Statement,
                 java.sql.ResultSet,
                 java.sql.SQLException,
                 itexpert.chap07.DbCon,
                 itexpert.chap07.Util" %>
<%
response.setContentType("text/html;");
System.out.println("1:"+(System.currentTimeMillis()-sTime));

Connection conn= null;
Statement stmt = null;
ResultSet rs   = null;

try {
    // DbCon 클래스의 인스턴스를 생성한다.
    DbCon dc = new DbCon();
System.out.println("2:"+(System.currentTimeMillis()-sTime));

    // Connection 을 가져온다.
    conn = dc.getConnection();
System.out.println("3:"+(System.currentTimeMillis()-sTime));

    // Statement 를 준비
    stmt = conn.createStatement();
System.out.println("4:"+(System.currentTimeMillis()-sTime));

    // ResultSet 가져와서 처리
    String query =
        "SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO FROM EMP";
    rs = stmt.executeQuery(query);
System.out.println("5:"+(System.currentTimeMillis()-sTime));
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
System.out.println("6:"+(System.currentTimeMillis()-sTime));
    } // end while
%></table><%
    // ResultSet 종료
    rs.close();
System.out.println("7:"+(System.currentTimeMillis()-sTime));

    // Statement 종료
    stmt.close();
System.out.println("8:"+(System.currentTimeMillis()-sTime));

} catch (SQLException e) {
    out.println("err:"+e.toString());
} finally {
System.out.println("9:"+(System.currentTimeMillis()-sTime));
    // Connection 종료
    conn.close();
System.out.println("10:"+(System.currentTimeMillis()-sTime));
}
%>