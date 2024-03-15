package itexpert.chap07;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * @author kenu
 */
public class DsConn {
    /**
     * DataSource 에서 Connection 을 가져온다.
	 * @return Connection
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
        Context initContext;
        try {
            initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/myORCL");

            return ds.getConnection();
        } catch (NamingException e) {
            System.out.println(
                "can't get Connection from DataSource:" + e.toString());
        }
        return null;
    }

}
