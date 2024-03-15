package itexpert.chap05;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.util.Hashtable;
import java.util.Enumeration;

public class LoginManager implements HttpSessionBindingListener{

	/**
	 * LoginManager ��ü ����
	 */
	private static LoginManager loginManager = null;

	/**
	 * ����� ID�� �����ص� Hashtable ����
	 */
	private static Hashtable loginUsers = new Hashtable();

	/**
	 * ������
	 */
	private LoginManager(){
		super();
	}

	/**
	 * �̱��� ��� ���
	 * @return LoginManager ��ü
	 */
	public static synchronized LoginManager getInstance(){
		if (loginManager == null){
			loginManager = new LoginManager();	
		}
		return loginManager;
	}

	/**
	 * ID �� PW �� �´��� Ȯ���ϴ� �޼ҵ�
	 * @param userID ����� ���̵�
	 * @param userPW ����� �н�����
	 * @return boolean ID/PW�� ��ġ�ϴ��� ����. ��ġ�ϸ� true, Ʋ���� false
	 */
	public boolean isValid(String userID, String userPW){
		// ID,PW �� �´��� Ȯ���ϴ� ������ ����, �׻� �´´ٴ� �����Ͽ� true ����
		return true;
	}

	/**
	 * �ش� ���ǿ��� �̹� �α����� �ߴ��� ���ߴ����� üũ
	 * @param sessionID ���� ���� ���̵�
	 * @return boolean �̷̹α��� ��� true ����, �α������� ������� false ����
	 */
	public boolean isLogin(String sessionID){
		boolean isLogin = false;
		Enumeration e =loginUsers.keys();
		String key = "";
		while ( e.hasMoreElements() ) {
			key = (String)e.nextElement();
			if ( sessionID.equals(key) ){
				isLogin = true;
			}
		} 
		return isLogin;
	}

	/**
	 * �ش� ���̵��� ���û���� �������� �̹� ������� ���̵������� �˾ƺ���
	 * @param userID ����� ���̵�
	 * @return boolean �̹̻������ ��� true ����, ������� �ƴϸ� false ����
	 */
	public boolean isUsing(String userID){
		boolean isUsing = false;
		Enumeration e =loginUsers.keys();
		String key = "";
		while ( e.hasMoreElements() ) {
			key = (String)e.nextElement();
			if ( userID.equals( loginUsers.get(key) ) ){
				isUsing = true;
			}
		} 
		return isUsing;
	}

	/**
	 * ID ����, Session Binding
	 * @param session ���ǰ�ü
	 * @param userID ����� ���̵�
	 */
	public void setSession(HttpSession session, String userID){
		loginUsers.put(session.getId(),userID);
		// Session Binding �� �Ͼ� ���� ����
		session.setAttribute( "login" , this.getInstance() );
	}

	/**
	 * ������ �����Ǿ�����
	 * @param event HttpSessionBindingEvent �� �ν��Ͻ�
	 */
	public void valueBound(HttpSessionBindingEvent event){
		// �ƹ��ϵ� ���� �ʴ´�
	}

	/**
	 * ������ ��������
	 * Hashtable�� ����� ���̵� �� �����Ѵ�.
	 * @param event HttpSessionBindingEvent �� �ν��Ͻ�
	 */ 
	public void valueUnbound(HttpSessionBindingEvent event){
		loginUsers.remove( event.getSession().getId() );
	}

	/**
	 * ���� ID�� ���� �α����� ID�� ������ ��
	 * @param sessionID ���� ���� ���̵�
	 * @return String ����� ���̵�
	 */
	public String getUserID(String sessionID){
		return (String)loginUsers.get(sessionID);
	}

	/**
	 * ���� �����ڼ�
	 * @return int ���� �����ڼ�
	 */
	public int getUserCount(){
		return loginUsers.size();
	}
}
