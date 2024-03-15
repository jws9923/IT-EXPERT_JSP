package itexpert.chap07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 데이터베이스 연결객체를 가져오는 클래스
 * @author kenu
 */
public class DbCon {
	final static String DB_URL =
		"jdbc:oracle:thin:@localhost:1521:ORCL";
	final static String DB_USER = "scott";
	final static String DB_PASSWORD= "tiger";

	static{
		/* jdbc 드라이버 로딩은 한 번만 실행되면 된다.
		 * DbCon 최초 호출시 한 번만 실행된다.
		 */
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			/* 에러메시지는 /logs 디렉토리의 catalina.out 이나
			 * 콘솔에 남겨진다.
			 */
			System.out.println(e.toString());
		}
	}

	/**
	 * 커넥션을 가져온다.
	 * @return Connection
	 * @throws SQLException
	 */
	public Connection getConnection() throws SQLException {
		return DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
	}
}
