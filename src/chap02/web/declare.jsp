<%-- declare.jsp --%>
<%@page contentType="text/html; charset=euc-kr" import="java.util.*" %>
<html>
<head><title> �������� ȯ���մϴ�</title></head>
<body>
<h2 align="center"><%= helloMessage()%></h2>
<hr>
</body>
</html>
<%! 
private String msg_am ="";
private String msg_pm = "";
	public String helloMessage() {
		Calendar cal = Calendar.getInstance();
		int hour_day = cal.get(Calendar.HOUR_OF_DAY);
		switch(hour_day) {
			case 7:
				msg_am ="��� �ð��Դϴ�. ���θ�����";
			break;
			case 8:
			case 9:
				msg_am = "��ſ� ���� �ð��� �Ǽ���";
			break;
			case 10:
			case 11:
				msg_am = "�ȳ��ϼ��� ���� ��ħ�Դϴ�.";
			 break;
			case 12:
				msg_pm = "���ɽð��Դϴ�. ���ְ� �弼��";
			break;
			case 13:
				msg_pm = "���Ľð��� ���������� ������ ���սô�.";
			break;
			case 14:
				msg_pm = "���� �԰� �����ô��� �������� �ϼž���?";
			break;
			case 15:
				msg_pm = "3�ð� �Ѿ����ϴ�. ���� ���� ��ȹ��� �����ϰ� ��ʴϱ�?";
			break;
			case 16:
				msg_pm = "�ȳ��ϼ���. �Ͻô� �� �������Ͻð� ��� �غ� �ϼž�����?";
			break;
			case 17:
				msg_pm = "�ȳ��ϼ���.���� �ϰ��� ���� �ϼ̽��ϴ�.";
			break;
			case 18:
			case 19:
			case 20:
				msg_pm = "�ȳ��ϼ���. ������ ���� �غ��ϴ� �ð��� �Ǽ���";
			break;
			default:
				msg_pm = "���Ϻ���.";
			break;
		}
		if(cal.get(Calendar.AM_PM) == Calendar.AM) {
			return msg_am;
		}
		return msg_pm;
		
	}
%>	
