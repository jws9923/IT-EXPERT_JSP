import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class HelloServlet extends HttpServlet {
public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		out.write("<HTML><HEAD><TITLE>Hello World</TITLE></HEAD>\r\n");
		out.write("<BODY>\r\n");
		out.write("<H1 ALIGN=\"CENTER\">Hello World</H1>\r\n");
		out.write("</BODY>\r\n");
		out.write("</HTML>");
		out.close();
	}
}
