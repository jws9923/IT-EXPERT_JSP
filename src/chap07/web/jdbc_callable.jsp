<%@ page import="java.sql.Connection,
                 java.sql.CallableStatement,
                 java.sql.SQLException,
                 itexpert.chap07.DsConn"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
long sTime = System.currentTimeMillis();
// �׽�Ʈ�� ������ �غ�
String [][] testdata = {
        {"idf", "passf", "�̸�F", "111111", "1111115"},
        {"idg", "passg", "�̸�G", "222222", "1111116"},
        {"idh", "passh", "�̸�H", "111111", "1111117"},
        {"idi", "passi", "�̸�I", "444444", "1111118"}
    };

// PROCEDURE CALL STRING
String QUERY_PROC =
            "{CALL PROC_INPUT_DATA(:ID, :PASS, :NAME, :JUMIN1, :JUMIN2)}";

Connection conn= null;
CallableStatement cstmt = null;

try {
// Ŀ�ؼ� ��������
    conn = DsConn.getConnection();
// Ʈ����� �����
    conn.setAutoCommit(false);

// CallableStatement �� ����
    cstmt = conn.prepareCall(QUERY_PROC);
// ������ ���̸�ŭ �ݺ�
    for(int i = 0; i< testdata.length; i++) {

        cstmt.setString(1, testdata[i][0]);  // id
        cstmt.setString(2, testdata[i][1]);  // password
        cstmt.setString(3, testdata[i][2]);  // name
        cstmt.setString(4, testdata[i][3]);  // jumin1
        cstmt.setString(5, testdata[i][4]);  // jumin2

        cstmt.executeUpdate();

        // �Ʒ� �� �ּ�(//)�� �����ϸ� �� �྿ Ŀ����
        // conn.commit();

    } // end for

// CallableStatement �� �ݱ�
    cstmt.close();

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