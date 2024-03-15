package itexpert.chap07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 데이터베이스 풀에서 연결객체를 가져오는 클래스
 * @author kenu
 */
public class DbPool {
	final static String DB_URL =
		"jdbc:oracle:thin:@localhost:1521:ORCL";
	final static String DB_USER = "scott";
	final static String DB_PASSWORD= "tiger";

	/* jdbc 드라이버 로딩은 한 번만 실행되면 된다.
	 * DbPool 최초 호출시 한 번만 실행된다.
	 */
	static {
	  try{
		  new pool.JDCConnectionDriver(
					"oracle.jdbc.driver.OracleDriver",
		  DB_URL,DB_USER, DB_PASSWORD);
	  }catch(Exception e){}
	}

	/**
	 * 커넥션을 가져온다.
	 * @return Connection
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:jdc:jdcpool");
	}
}
