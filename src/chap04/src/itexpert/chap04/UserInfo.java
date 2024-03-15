package itexpert.chap04;

import java.util.*;

/**
 * IT Expert JSP  4장 자바빈즈
 * 
 * @author hsboy
 */

public class UserInfo {

	private String userId;
	private String userPass;
	private String userName;
	private String userEmail;
	private String userAddr;
	private String userTel;
	private String regNum;

	/**
	 * 아이디 설정
	 * @param userId 아이디
	 */
	public void setUserId(String userId){
		this.userId = userId;
	}

	/**
	 * 비밀번호 설정
	 * @param userPass 비밀번호
	 */
	public void setUserPass(String userPass){
		this.userPass = userPass;
	}

	/**
	 * 이름 설정
	 * @param userName 이름
	 */
	public void setUserName(String userName){
		this.userName = userName;
	}

	/**
	 * 주민등록 번호 설정
	 * @param regNum 주민등록 번호
	 */
	public void setRegNum(String regNum){
		this.regNum = regNum;
	}

	/**
	 * 이메일 설정
	 * @param userEmail 이메일
	 */
	public void setUserEmail(String userEmail){
		this.userEmail = userEmail;
	}

	/**
	 * 주소 설정
	 * @param userAddr 주소
	 */
	public void setUserAddr(String userAddr){
		this.userAddr = userAddr;
	}

	/**
	 * 전화번호 설정
	 * @param userTel 전화번호
	 */
	public void setUserTel(String userTel){
		this.userTel = userTel;
	}


	/**
	 * 아이디 얻기
	 * @return 아이디
	 */
	public String getUserId(){
		return userId;
	}

	/**
	 * 비밀번호 얻기
	 * @return 비밀번호
	 */
	public String getUserPass(){
		return userPass;
	}

	/**
	 * 이름 얻기
	 * @return 이름
	 */
	public String getUserName(){
		return userName;
	}

	/**
	 * 주민등록번호 얻기
	 * @return 주민등록번호
	 */
	public String getRegNum(){
		return regNum;
	}
	
	/**
	 * 이메일 얻기
	 * @return 이메일
	 */
	public String getUserEmail(){
		return userEmail;
	}

	/**
	 * 주소 얻기
	 * @return 주소
	 */
	public String getUserAddr(){
		return userAddr;
	}
	
	/**
	 * 전화번호 얻기
	 * @return 전화번호
	 */
	public String getUserTel(){
		return userTel;
	}


	/**
	 * 주민등록번호를 기반으로 나이구하기.
	 * @return 나이. 주민등록번호가 정확치 않을 경우엔 -1
	 */
	public int getAge(){

		int birth_year = -1 ;

		try{
			if ( Integer.parseInt(regNum.substring(7,8)) < 3 )	{
				birth_year = Integer.parseInt("19" + regNum.substring(0,2));
			} else {
				birth_year = Integer.parseInt("20" + regNum.substring(0,2));
			}
		} catch (Exception e){
			return birth_year;
		}

		Calendar calendar = Calendar.getInstance();
		int this_year = calendar.get(Calendar.YEAR);

		return this_year - birth_year + 1 ;
		
	}
}