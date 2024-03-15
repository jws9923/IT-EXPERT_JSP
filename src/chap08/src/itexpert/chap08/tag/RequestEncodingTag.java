package itexpert.chap08.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * request ���� �Ѿ���� �Ķ���Ϳ� �ϰ� ���ڵ��Ѵ�.
 */
public class RequestEncodingTag
    extends TagSupport
{

    public int doEndTag() {
        HttpServletRequest req =
                (HttpServletRequest) pageContext.getRequest();
        try {
        req.setCharacterEncoding("MS949");
        } catch (java.io.UnsupportedEncodingException e) {
            System.out.println( e.toString() );
        }
        return SKIP_BODY;
    }
}
