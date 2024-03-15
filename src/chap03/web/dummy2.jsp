<%-- dummy2.jsp --%>
<% 
	int sum = 0;
	for(int i = 1; i <= 10; i++) {
		sum += i;
		out.print(sum + "<BR>");
	}
%>
