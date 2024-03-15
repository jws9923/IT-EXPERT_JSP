package itexpert.chap07;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Types;

import javax.servlet.jsp.JspWriter;

/**
 * sql ���� �ʵ��� ���̺��� �����ִ� Ŭ����
 * @author kenu
 */
public class SqlTable {
	/**
	 * ���� ��¸޼ҵ� printTable
	 * @param query ������ ����
	 * @param out JspWriter ���� ��ü
	 * @return void
	 */
	public static void printTable(String query, JspWriter out)
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
			pstmt = conn.prepareStatement(query);
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

		// �����͸� �� �پ� ����Ѵ�.
			while(rs.next()) {
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

}
