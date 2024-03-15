package itexpert.chap08.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;


/**
 * log 를 남기는 태그
 */
public class LogTag extends BodyTagSupport
{
    public int doAfterBody() throws JspException {
        String s = bodyContent.getString();
        if(s!=null) s=s.trim();
        System.err.println(s+"\n:"+new java.util.Date());
        return SKIP_BODY;
    }
}
