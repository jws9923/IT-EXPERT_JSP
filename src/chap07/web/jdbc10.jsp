<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.SQLException,
                 itexpert.chap07.DsConn"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
long sTime = System.currentTimeMillis();

Connection conn= null;
PreparedStatement pstmt = null;

StringBuffer queryBuf = new StringBuffer();

try {

    // Connection �� �����´�.
    conn = DsConn.getConnection();

    // ���̺��� �����ϴ� ����
    queryBuf.append("CREATE TABLE TEST_TABLE ( ")
        .append(" SEQ NUMBER NOT NULL, ")
        .append(" SUBJECT VARCHAR(200) NOT NULL")
        .append(" ) ");

    // PreparedStatement �� ����
    pstmt = conn.prepareStatement(queryBuf.toString());

    // ������ �����Ѵ�.
    pstmt.executeUpdate();

    // PreparedStatement �� �ݴ´�.
    pstmt.close();

    // �����͸� �Է��ϴ� ����
    queryBuf.setLength(0);
    queryBuf.append("INSERT INTO TEST_TABLE (SEQ, SUBJECT) VALUES ")
            .append("( :seq , '�� ���� '||:subject||' ��° �ԷµǾ����ϴ�.' )");

    // �ٽ� PreparedStatement�� �����Ѵ�.
    pstmt = conn.prepareStatement(queryBuf.toString());
%>start:<%=System.currentTimeMillis()-sTime%><hr><%
    // �ݺ� 15000ȸ
    for(int i=0; i<15000; i++) {
    //   ������ �����Ѵ�.
        pstmt.setInt(1, i);
        pstmt.setInt(2, i);
    //   ��ġ�� �߰��Ѵ�.
        pstmt.addBatch();
    } // end for
%>before batch job :<%=System.currentTimeMillis()-sTime%><%
    // ����� ������ �Ѳ����� �����Ų��.
    pstmt.executeBatch();
%><hr>end:<%=System.currentTimeMillis()-sTime%><%

    // PreparedStatement �� �ݴ´�.
    pstmt.close();

    // ���̺��� �����ϴ� ����
    queryBuf.setLength(0);
    queryBuf.append("DROP TABLE TEST_TABLE");

    // PreparedStatement �� ����
    pstmt = conn.prepareStatement(queryBuf.toString());

    // ������ �����Ѵ�.
    pstmt.executeUpdate();

    // PreparedStatement �� �ݴ´�.
    pstmt.close();

} catch (SQLException e) {
    out.println("err:"+e.toString());
} finally {
    // Connection ��ü ��ȯ
    conn.close();
}
%>