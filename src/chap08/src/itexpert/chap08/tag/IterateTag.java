package itexpert.chap08.tag;

import java.util.Collection;
import java.util.Iterator;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.TagSupport;

/**
* 반복 태그
*/

public class IterateTag extends TagSupport {
    private Iterator iterator;
    private Collection collection;
    private int cnt;

    /**
     * Method setCollection.
     * @param collection
     */
    public void setCollection(Collection collection) {
        this.collection = collection;
    }

    /**
     * @see javax.servlet.jsp.tagext.Tag#doStartTag()
     */
    public int doStartTag() throws JspTagException {
        if (collection == null) {
            throw new JspTagException("null sent");
        }

        iterator = collection.iterator();
        if (iterator.hasNext()) {
            cnt = 1;
            pageContext.setAttribute("cnt", new Integer(cnt));
            pageContext.setAttribute("item", iterator.next());
            return EVAL_BODY_INCLUDE;
        } else {
            return SKIP_BODY;
        } // end if
    }

    /**
     * @see javax.servlet.jsp.tagext.IterationTag#doAfterBody()
     */
    public int doAfterBody()
    {
        if (iterator.hasNext()) {
            cnt++;
            pageContext.setAttribute("cnt", new Integer(cnt));
            pageContext.setAttribute("item", iterator.next());

            return EVAL_BODY_AGAIN;
        } else {
            return SKIP_BODY;
        } // end if
    }

}

