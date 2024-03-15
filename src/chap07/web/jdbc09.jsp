<%@ page import="java.sql.Connection,
                 java.sql.Statement,
                 java.sql.SQLException,
                 itexpert.chap07.DsConn"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
long sTime = System.currentTimeMillis();

Connection conn= null;
Statement stmt = null;

StringBuffer queryBuf = new StringBuffer();

try {

    // Connection �� �����´�.
    conn = DsConn.getConnection();

    // ���̺��� �����ϴ� ����
    queryBuf.append("CREATE TABLE TEST_TABLE ( ")
        .append(" SEQ NUMBER NOT NULL, ")
        .append(" SUBJECT VARCHAR(200) NOT NULL")
        .append(" ) ");

    // Statement �� ����
    stmt = conn.createStatement();

    // ������ �����Ѵ�.
    stmt.executeUpdate(queryBuf.toString());

    // Statement �� �ݴ´�.
    stmt.close();

    // �ٽ� Statement �� �����Ѵ�.
    stmt = conn.createStatement();
%>start:<%=System.currentTimeMillis()-sTime%><hr><%
    // �ݺ� 15000ȸ
    for(int i=0; i<15000; i++) {
    //   ������ ���� �����Ѵ�.
        queryBuf.setLength(0);
        queryBuf.append("INSERT INTO TEST_TABLE (SEQ, SUBJECT) VALUES ( " )
                .append(i).append(", '�� ���� ")
                .append(i).append(" ��° �ԷµǾ����ϴ�.' ) ");
    //   ��ġ�� �߰��Ѵ�.
        stmt.addBatch(queryBuf.toString());
    } // end for
%>before batch job :<%=System.currentTimeMillis()-sTime%><%
    // ����� ������ �Ѳ����� �����Ų��.
    stmt.executeBatch();
%><hr>end:<%=System.currentTimeMillis()-sTime%><%

    // Statement �� �ݴ´�.
    stmt.close();

    // ���̺��� �����ϴ� ����
    queryBuf.setLength(0);
    queryBuf.append("DROP TABLE TEST_TABLE");

    // Statement �� ����
    stmt = conn.createStatement();

    // ������ �����Ѵ�.
    stmt.executeUpdate(queryBuf.toString());

    // Statement �� �ݴ´�.
    stmt.close();

} catch (SQLException e) {
    out.println("err:"+e.toString());
} finally {
    // Connection ��ü ��ȯ
    conn.close();
}
%>