package itexpert.chap08.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * 대문자로 바꾸는 태그
 */
public class UpperCaseTag extends BodyTagSupport
{
    public int doEndTag() throws JspException {

        if( (bodyContent == null) )
            return EVAL_PAGE;

        try {
            String text = bodyContent.getString();
            pageContext.getOut().print(text.toUpperCase());
        } catch (IOException e) {
            throw new JspException(e.toString());
        }

        return EVAL_PAGE;
    }
}
