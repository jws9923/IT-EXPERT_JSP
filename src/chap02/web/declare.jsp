<%-- declare.jsp --%>
<%@page contentType="text/html; charset=euc-kr" import="java.util.*" %>
<html>
<head><title> 여러분을 환영합니다</title></head>
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
				msg_am ="출근 시간입니다. 서두르세요";
			break;
			case 8:
			case 9:
				msg_am = "즐거운 업무 시간이 되세요";
			break;
			case 10:
			case 11:
				msg_am = "안녕하세요 좋은 아침입니다.";
			 break;
			case 12:
				msg_pm = "점심시간입니다. 맛있게 드세요";
			break;
			case 13:
				msg_pm = "오후시간도 열정적으로 업무에 임합시다.";
			break;
			case 14:
				msg_pm = "점심 먹고 졸리시더라도 오늘할일 하셔야죠?";
			break;
			case 15:
				msg_pm = "3시가 넘었습니다. 오늘 할일 계획대로 진행하고 계십니까?";
			break;
			case 16:
				msg_pm = "안녕하세요. 하시던 일 마무리하시고 퇴근 준비 하셔야지요?";
			break;
			case 17:
				msg_pm = "안녕하세요.오늘 일과에 수고 하셨습니다.";
			break;
			case 18:
			case 19:
			case 20:
				msg_pm = "안녕하세요. 내일을 위해 준비하는 시간이 되세요";
			break;
			default:
				msg_pm = "내일봐요.";
			break;
		}
		if(cal.get(Calendar.AM_PM) == Calendar.AM) {
			return msg_am;
		}
		return msg_pm;
		
	}
%>	
