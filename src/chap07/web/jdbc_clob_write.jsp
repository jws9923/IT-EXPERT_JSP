<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.ResultSet,
                 java.sql.SQLException,
                 java.io.Reader,
                 java.io.Writer,
                 java.io.CharArrayReader,
                 oracle.sql.CLOB,
                 oracle.jdbc.driver.OracleResultSet,
                 itexpert.chap07.DbPool"
         pageEncoding="MS949" %>
<%
request.setCharacterEncoding("MS949");
response.setContentType("text/html;");
// ������ �غ�
String content = request.getParameter("content");
// ���� ����
String QUERY_SEQ_CLOB_TABLE =
    "SELECT SEQ_CLOB_TABLE.NEXTVAL FROM DUAL";
String QUERY_INSERT_CLOB_TABLE =
    "INSERT INTO CLOB_TABLE (SEQ, NAME, SUBJECT, CONTENT) VALUES (:SEQ, :NAME, :SUBJECT, EMPTY_CLOB())";
String QUERY_INSERT_CLOB =
    "SELECT CONTENT FROM CLOB_TABLE WHERE SEQ = ? FOR UPDATE";

Connection conn= null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
// Ŀ�ؼ� ��������
    conn = DbPool.getConnection();
// Ʈ����� �����
    conn.setAutoCommit(false);

    int seq = 0;
    // �Ϸù�ȣ(seq) ���������� ��������
    // PreparedStatement �� ����
    pstmt = conn.prepareStatement(QUERY_SEQ_CLOB_TABLE);
    // ������ �����Ѵ�.
    rs = pstmt.executeQuery();
    // seq �� �����´�.
    if(rs.next()) {
        seq = rs.getInt(1);
    }
    // PreparedStatement �� �ݴ´�.
    pstmt.close();

    // ���̺� �Է�(CONTENT �� CLOB_EMPTY()��)
    pstmt = conn.prepareStatement(QUERY_INSERT_CLOB_TABLE);
    pstmt.setInt   (1, seq);
    pstmt.setString(2, request.getParameter("name"));  // name
    pstmt.setString(3, request.getParameter("subject"));  // subject

    pstmt.executeUpdate();
    pstmt.close();

    // CLOB �Է�
    pstmt = conn.prepareStatement(QUERY_INSERT_CLOB);
    pstmt.setInt(1,seq);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        // ResultSet�� oracle.jdbc.driver.OracleResultSet���� ĳ���� �Ŀ�
        // CLOB �ּҸ� ������ oracle.sql.CLOB�� �Է�
    	CLOB clob = ((OracleResultSet)rs).getCLOB(1);
    	// CLOB �÷����� ���� ���� ��� Writer ����
    	Writer writer = clob.getCharacterOutputStream();
    	// content String �� Reader src�� ��ȯ �� �Է�
    	Reader src = new CharArrayReader(content.toCharArray());
    	char[] buffer = new char[1024];
    	int read = 0;
        // 1024 char�� ��� CLOB �÷����� ����
    	while ( (read = src.read(buffer,0,1024)) != -1) {
    	    writer.write(buffer, 0, read); // write clob.
    	}
    	src.close();
    	writer.close();

    }
    rs.close();
    pstmt.close();

// ���� �Ϸ�� Ŀ��
    conn.commit();

} catch (SQLException e) {
// ���� �߻��� �ѹ��ϰ� �����޽����� ǥ���Ѵ�.
    conn.rollback();
    out.println("err:"+e.toString());
} finally {
// Ʈ����� �⺻���·� ��ȯ
    conn.setAutoCommit(true);
// Ŀ�ؼ� �ݾ��ֱ�(��ü ��ȯ)
    conn.close();
}
%><a href="jdbc_clob_list.jsp">list</a>