package itexpert.chap08.tag;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * Condition �±�
 */
public class ConditionTag extends BodyTagSupport {


    public int doAfterBody() throws JspTagException {
        IfTag parent = (IfTag) findAncestorWithClass(this, IfTag.class);
        if (parent == null) {
            throw new JspTagException("Condition�� If�ȿ� �־�� �˴ϴ�.");
        }
        String condition = getBodyContent().getString().trim();
        parent.setCondition("true".equals(condition));

        return SKIP_BODY;
    }

}
