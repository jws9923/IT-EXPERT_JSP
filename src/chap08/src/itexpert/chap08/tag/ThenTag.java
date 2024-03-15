package itexpert.chap08.tag;

import java.io.IOException;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * Then �±�
 */
public class ThenTag extends BodyTagSupport
{

    /**
     * @see javax.servlet.jsp.tagext.IterationTag#doAfterBody()
     */
    public int doAfterBody() throws JspTagException {
        IfTag parent = (IfTag) findAncestorWithClass(this, IfTag.class);
        if (parent == null) {
            throw new JspTagException("Then�� If�ȿ� �־�� �˴ϴ�.");
        }
        if(parent.getCondition()) {
            BodyContent body = getBodyContent();
            JspWriter out = body.getEnclosingWriter();
            try {
                out.println(body.getString());
            } catch (IOException e) {
                System.out.println("error while writing : "+e.getMessage());
            }
        }

        return SKIP_BODY;

    }

}
