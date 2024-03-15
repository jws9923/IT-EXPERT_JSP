package itexpert.chap08.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

/**
 * ã�� �ܾ ǥ���ϴ� �±�
 */
public class MarkTag extends BodyTagSupport
{
    private String word = "";
    /**
     * @see javax.servlet.jsp.tagext.Tag#doEndTag()
     */
    public int doEndTag() throws JspException {

        if( bodyContent == null )
            return EVAL_PAGE;

        try {
            String text = bodyContent.getString();
            if( word != null && word.length() > 0 ) {
                text = text.replaceAll(word, "<font color='red'>"+word+"</font>");
            }
            pageContext.getOut().print(text);
        } catch (IOException e) {
            throw new JspException(e.toString());
        }

        return EVAL_PAGE;
    }

    /**
     * word �Ӽ��� �����ϴ� �޼�
     * @param word
     */
    public void setWord(String word) {
        if(word==null) word = "";
        this.word = word;
    }
}
