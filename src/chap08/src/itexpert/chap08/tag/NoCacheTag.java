package itexpert.chap08.tag;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * cache 를 지우는 역할
 */
public class NoCacheTag extends TagSupport
{

    public int doStartTag() {
        HttpServletResponse res = 
                (HttpServletResponse) pageContext.getResponse();
        res.setHeader ("Cache-Control", "no-cache");
        res.setDateHeader("Expires", 0);
        res.setHeader ("Pragma", "No-cache");
        return SKIP_BODY;
    }
}
