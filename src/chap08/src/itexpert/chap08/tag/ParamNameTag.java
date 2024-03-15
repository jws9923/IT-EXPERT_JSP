package itexpert.chap08.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.tagext.TagSupport;


/**
 * �Ķ���͸� ����ϴ� �±�
 */
public class ParamNameTag extends TagSupport
{
    public int doEndTag() {
        HttpServletRequest req = 
                (HttpServletRequest) pageContext.getRequest();
                
        // �Ķ���� "name" ���� �޾ƿ� name ������ �ִ´�.
        // �Ķ���Ͱ��� ���� ��츸 ����Ѵ�.
        String name = req.getParameter("name");
        try {
            if (name!=null) {
                pageContext.getOut().print(name);
            }
        } catch(java.io.IOException e) {
            System.out.println( e.toString() );
        }
        return SKIP_BODY;
    }
}
