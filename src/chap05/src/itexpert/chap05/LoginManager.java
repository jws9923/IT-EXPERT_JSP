package itexpert.chap05;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.util.Hashtable;
import java.util.Enumeration;

public class LoginManager implements HttpSessionBindingListener{

	/**
	 * LoginManager 객체 선언
	 */
	private static LoginManager loginManager = null;

	/**
	 * 사용자 ID를 저장해둘 Hashtable 선언
	 */
	private static Hashtable loginUsers = new Hashtable();

	/**
	 * 생성자
	 */
	private LoginManager(){
		super();
	}

	/**
	 * 싱글톤 기법 사용
	 * @return LoginManager 객체
	 */
	public static synchronized LoginManager getInstance(){
		if (loginManager == null){
			loginManager = new LoginManager();	
		}
		return loginManager;
	}

	/**
	 * ID 와 PW 이 맞는지 확인하는 메소드
	 * @param userID 사용자 아이디
	 * @param userPW 사용자 패스워드
	 * @return boolean ID/PW이 일치하는지 여부. 일치하면 true, 틀리면 false
	 */
	public boolean isValid(String userID, String userPW){
		// ID,PW 이 맞는지 확인하는 로직은 생략, 항상 맞는다는 가정하에 true 리턴
		return true;
	}

	/**
	 * 해당 세션에서 이미 로그인을 했는지 안했는지를 체크
	 * @param sessionID 현재 세션 아이디
	 * @return boolean 이미로긴한 경우 true 리턴, 로그인하지 않은경우 false 리턴
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
	 * 해당 아이디의 동시사용을 막기위해 이미 사용중인 아이디인지를 알아본다
	 * @param userID 사용자 아이디
	 * @return boolean 이미사용중인 경우 true 리턴, 사용중이 아니면 false 리턴
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
	 * ID 저장, Session Binding
	 * @param session 세션객체
	 * @param userID 사용자 아이디
	 */
	public void setSession(HttpSession session, String userID){
		loginUsers.put(session.getId(),userID);
		// Session Binding 이 일어 나는 시점
		session.setAttribute( "login" , this.getInstance() );
	}

	/**
	 * 세션이 성립되었을때
	 * @param event HttpSessionBindingEvent 의 인스턴스
	 */
	public void valueBound(HttpSessionBindingEvent event){
		// 아무일도 하지 않는다
	}

	/**
	 * 세션이 끊겼을때
	 * Hashtable에 저장된 아이디 를 삭제한다.
	 * @param event HttpSessionBindingEvent 의 인스턴스
	 */ 
	public void valueUnbound(HttpSessionBindingEvent event){
		loginUsers.remove( event.getSession().getId() );
	}

	/**
	 * 세션 ID로 현재 로그인한 ID를 구분해 냄
	 * @param sessionID 현재 세션 아이디
	 * @return String 사용자 아이디
	 */
	public String getUserID(String sessionID){
		return (String)loginUsers.get(sessionID);
	}

	/**
	 * 현재 접속자수
	 * @return int 현재 접속자수
	 */
	public int getUserCount(){
		return loginUsers.size();
	}
}
