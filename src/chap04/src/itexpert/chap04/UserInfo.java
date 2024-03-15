package itexpert.chap04;

import java.util.*;

/**
 * IT Expert JSP  4�� �ڹٺ���
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
	 * ���̵� ����
	 * @param userId ���̵�
	 */
	public void setUserId(String userId){
		this.userId = userId;
	}

	/**
	 * ��й�ȣ ����
	 * @param userPass ��й�ȣ
	 */
	public void setUserPass(String userPass){
		this.userPass = userPass;
	}

	/**
	 * �̸� ����
	 * @param userName �̸�
	 */
	public void setUserName(String userName){
		this.userName = userName;
	}

	/**
	 * �ֹε�� ��ȣ ����
	 * @param regNum �ֹε�� ��ȣ
	 */
	public void setRegNum(String regNum){
		this.regNum = regNum;
	}

	/**
	 * �̸��� ����
	 * @param userEmail �̸���
	 */
	public void setUserEmail(String userEmail){
		this.userEmail = userEmail;
	}

	/**
	 * �ּ� ����
	 * @param userAddr �ּ�
	 */
	public void setUserAddr(String userAddr){
		this.userAddr = userAddr;
	}

	/**
	 * ��ȭ��ȣ ����
	 * @param userTel ��ȭ��ȣ
	 */
	public void setUserTel(String userTel){
		this.userTel = userTel;
	}


	/**
	 * ���̵� ���
	 * @return ���̵�
	 */
	public String getUserId(){
		return userId;
	}

	/**
	 * ��й�ȣ ���
	 * @return ��й�ȣ
	 */
	public String getUserPass(){
		return userPass;
	}

	/**
	 * �̸� ���
	 * @return �̸�
	 */
	public String getUserName(){
		return userName;
	}

	/**
	 * �ֹε�Ϲ�ȣ ���
	 * @return �ֹε�Ϲ�ȣ
	 */
	public String getRegNum(){
		return regNum;
	}
	
	/**
	 * �̸��� ���
	 * @return �̸���
	 */
	public String getUserEmail(){
		return userEmail;
	}

	/**
	 * �ּ� ���
	 * @return �ּ�
	 */
	public String getUserAddr(){
		return userAddr;
	}
	
	/**
	 * ��ȭ��ȣ ���
	 * @return ��ȭ��ȣ
	 */
	public String getUserTel(){
		return userTel;
	}


	/**
	 * �ֹε�Ϲ�ȣ�� ������� ���̱��ϱ�.
	 * @return ����. �ֹε�Ϲ�ȣ�� ��Ȯġ ���� ��쿣 -1
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