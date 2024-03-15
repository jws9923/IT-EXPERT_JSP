<%@ page import="java.sql.Connection,
                 java.sql.PreparedStatement,
                 java.sql.ResultSet,
                 java.sql.ResultSetMetaData,
                 java.sql.SQLException,
                 java.sql.Types,
                 itexpert.chap07.DsConn,
                 itexpert.chap07.Util"
         pageEncoding="MS949" %>
<%
response.setContentType("text/html;");
// ������ ����
String query1 = "SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO FROM EMP";
String query2 = "SELECT EMPNO AS �����ȣ, ENAME AS �̸�, SAL AS ���޿�, HIREDATE AS �Ի��� FROM EMP";

// ��� �޼ҵ� ȣ��(����1, out)
printTable(query1, out);
// ��� �޼ҵ� ȣ��(����2, out)
printTable(query2, out);
%>
<%!
/**
 * ���� ��¸޼ҵ� printTable
 * @param query ������ ����
 * @param out JspWriter ���� ��ü
 * @return void
 */
void printTable(String query, JspWriter out)
            throws SQLException, java.io.IOException {
    Connection conn= null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    ResultSetMetaData rsmd = null;
    StringBuffer sbuf = new StringBuffer();

    try {
    // Ŀ�ؼ� ��������
        conn = DsConn.getConnection();
    // PreparedStatement ���� - ��
        pstmt = conn.prepareStatement(query,
                        ResultSet.TYPE_SCROLL_INSENSITIVE,
                        ResultSet.CONCUR_READ_ONLY);
    // ResultSet ����
        rs = pstmt.executeQuery();
    // ResultSetMetaData ����
        rsmd = rs.getMetaData();
    // �ʵ��� ������ ����Ѵ�.
        int count = rsmd.getColumnCount();
        for(int i=1;i<=count;i++) {
            sbuf.append("<th>").append(rsmd.getColumnLabel(i)).append("</th>\n");
        }
        sbuf.insert(0,"<table>\n<tr>\n").append("</tr>\n");

    // ���� ���� ���������� �̵�
        rs.last();
    // �ټ���° ������ �̵�
    //  rs.absolute(5);
    // �����͸� ������ �� �پ� ����Ѵ�.
        while(rs.previous()) {
            sbuf.append("<tr>");
    // �ʵ��� ���̸�ŭ �ݺ��Ѵ�.
            for(int i=1;i<=count;i++) {
                sbuf.append("<td>");
    // �÷� Type �� ���� �������� ������ �޸� �Ѵ�.
                switch(rsmd.getColumnType(i))  {
                    case Types.TIMESTAMP :
                        sbuf.append(rs.getDate(i));
                        break;
                    case Types.NUMERIC :
                        sbuf.append("<p align=\"right\">")
                            .append(rs.getInt(i)).append("</p>");
                        break;
                    default :
                        sbuf.append(Util.nullChk(rs.getString(i)));
                }
                sbuf.append("</td>\n");
            }
            sbuf.append("</tr>");
        }
        sbuf.append("</table>");
    // �����͸� ����Ѵ�.
        out.println(sbuf);
    // ResultSet �� �ݴ´�.
        rs.close();
    // PreparedStatement �� �ݴ´�. - ��
        pstmt.close();
    } catch (SQLException e) {
        out.println("err:"+e.toString());
    } finally {
    // Ŀ�ؼ��� �ݴ´�.
        conn.close();
    }
}
%>