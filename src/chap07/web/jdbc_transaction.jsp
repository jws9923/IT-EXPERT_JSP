<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.ResultSet,
                 java.sql.SQLException,
                 itexpert.chap07.DsConn"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
long sTime = System.currentTimeMillis();
// �׽�Ʈ�� ������ �غ�
String [][] testdata = {
        {"ida", "passa", "�̸�A", "111111", "1111111"},
        {"idb", "passb", "�̸�B", "222222", "1111111"},
        {"idc", "passc", "�̸�C", "111111", "1111111"},
        {"idd", "passd", "�̸�D", "444444", "1111111"}
    };
// ���� ����
String QUERY_SEQ_AUTH =
    "SELECT SEQ_AUTH.NEXTVAL FROM DUAL";
String QUERY_INSERT_AUTH =
    "INSERT INTO AUTH (SEQ, ID, PASSWORD) VALUES (:SEQ, :ID, :PASSWORD)";
String QUERY_INSERT_MEMBER_INFO =
    "INSERT INTO MEMBER_INFO (FSEQ, NAME, JUMIN1, JUMIN2) VALUES (:FSEQ, :NAME, :JUMIN1, :JUMIN2)";
// �� �������� " " ���̴� ����Ű�� �ٹٲ��� ���� �� �ٷ� �̾ ����.

Connection conn= null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
// Ŀ�ؼ� ��������
    conn = DsConn.getConnection();
// Ʈ����� �����
    conn.setAutoCommit(false);

    int seq = 0;
// ������ ���̸�ŭ �ݺ�
    for(int i = 0; i< testdata.length; i++) {
        // �Ϸù�ȣ(seq) ���������� ��������
        // PreparedStatement �� ����
        pstmt = conn.prepareStatement(QUERY_SEQ_AUTH);
        // ������ �����Ѵ�.
        rs = pstmt.executeQuery();
        // seq �� �����´�.
        if(rs.next()) {
            seq = rs.getInt(1);
        }
        // PreparedStatement �� �ݴ´�.
        pstmt.close();

        // �α��� ���̺�(seq, id, password) �Է��ϱ�
        pstmt = conn.prepareStatement(QUERY_INSERT_AUTH);
        pstmt.setInt   (1, seq);
        pstmt.setString(2, testdata[i][0]);  // id
        pstmt.setString(3, testdata[i][1]);  // password

        pstmt.executeUpdate();
        pstmt.close();

        // ȸ�� ���� ���̺�(fseq, name, jumin1, jumin2) �Է��ϱ�
        pstmt = conn.prepareStatement(QUERY_INSERT_MEMBER_INFO);
        pstmt.setInt   (1, seq);
        pstmt.setString(2, testdata[i][2]);  // name
        pstmt.setString(3, testdata[i][3]);  // jumin1
        pstmt.setString(4, testdata[i][4]);  // jumin2

        pstmt.executeUpdate();
        pstmt.close();
        // �Ʒ� �� �ּ�(//)�� �����ϸ� �� �྿ Ŀ����
        // conn.commit();

    } // end for

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
%>