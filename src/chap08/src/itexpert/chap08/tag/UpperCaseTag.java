package itexpert.chap08.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * �빮�ڷ� �ٲٴ� �±�
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
