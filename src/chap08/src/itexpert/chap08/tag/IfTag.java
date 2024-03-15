package itexpert.chap08.tag;

import javax.servlet.jsp.tagext.TagSupport;

/**
 * If еб╠в
 */
public class IfTag extends TagSupport
{
    private boolean condition;

    /**
     * @see javax.servlet.jsp.tagext.Tag#doStartTag()
     */
    public int doStartTag() {
        return EVAL_BODY_INCLUDE;
    }
    /**
     * Returns the condition.
     * @return boolean
     */
    public boolean getCondition() {
        return condition;
    }

    /**
     * Sets the condition.
     * @param condition The condition to set
     */
    public void setCondition(boolean condition) {
        this.condition = condition;
    }

}
