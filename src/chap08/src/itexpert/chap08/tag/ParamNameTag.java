package itexpert.chap08.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.tagext.TagSupport;


/**
 * 파라메터를 출력하는 태그
 */
public class ParamNameTag extends TagSupport
{
    public int doEndTag() {
        HttpServletRequest req = 
                (HttpServletRequest) pageContext.getRequest();
                
        // 파라메터 "name" 값을 받아와 name 변수에 넣는다.
        // 파라메터값이 있을 경우만 출력한다.
        String name = req.getParameter("name");
        try {
            if (name!=null) {
                pageContext.getOut().print(name);
            }
        } catch(java.io.IOException e) {
            System.out.println( e.toString() );
        }
        return SKIP_BODY;
    }
}
