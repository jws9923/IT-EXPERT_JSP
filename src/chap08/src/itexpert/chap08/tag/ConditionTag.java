package itexpert.chap08.tag;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * Condition 태그
 */
public class ConditionTag extends BodyTagSupport {


    public int doAfterBody() throws JspTagException {
        IfTag parent = (IfTag) findAncestorWithClass(this, IfTag.class);
        if (parent == null) {
            throw new JspTagException("Condition은 If안에 있어야 됩니다.");
        }
        String condition = getBodyContent().getString().trim();
        parent.setCondition("true".equals(condition));

        return SKIP_BODY;
    }

}
