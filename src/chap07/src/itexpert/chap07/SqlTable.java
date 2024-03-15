package itexpert.chap07;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Types;

import javax.servlet.jsp.JspWriter;

/**
 * sql 문의 필드명과 레이블을 보여주는 클래스
 * @author kenu
 */
public class SqlTable {
	/**
	 * 쿼리 출력메소드 printTable
	 * @param query 실행할 쿼리
	 * @param out JspWriter 내장 객체
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
		// 커넥션 가져오기
			conn = DsConn.getConnection();
		// PreparedStatement 생성 - ⓐ
			pstmt = conn.prepareStatement(query);
		// ResultSet 생성
			rs = pstmt.executeQuery();
		// ResultSetMetaData 생성
			rsmd = rs.getMetaData();
		// 필드의 정보를 출력한다.
			int count = rsmd.getColumnCount();
			for(int i=1;i<=count;i++) {
				sbuf.append("<th>").append(rsmd.getColumnLabel(i)).append("</th>\n");
			}
			sbuf.insert(0,"<table>\n<tr>\n").append("</tr>\n");

		// 데이터를 한 줄씩 출력한다.
			while(rs.next()) {
				sbuf.append("<tr>");
		// 필드의 길이만큼 반복한다.
				for(int i=1;i<=count;i++) {
					sbuf.append("<td>");
		// 컬럼 Type 에 따라서 가져오는 형식을 달리 한다.
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
		// 데이터를 출력한다.
			out.println(sbuf);
		// ResultSet 을 닫는다.
			rs.close();
		// PreparedStatement 를 닫는다. - ⓑ
			pstmt.close();
		} catch (SQLException e) {
			out.println("err:"+e.toString());
		} finally {
		// 커넥션을 닫는다.
			conn.close();
		}
	}

}
