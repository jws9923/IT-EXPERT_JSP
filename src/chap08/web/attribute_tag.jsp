<%@ page pageEncoding="MS949" info="�Ӽ����� �±� ����" %>
<%@ taglib prefix="it1" uri="/WEB-INF/tld/simple-taglib.tld" %>
<%@ taglib prefix="it" uri="/WEB-INF/tld/attribute-taglib.tld" %>
<it1:reqEncode/>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
ã�� �ܾ ǥ�ø� �ϴ� �±��Դϴ�.
<it:mark word='<%= request.getParameter("word") %>'>
<pre>
�ҳ��� ���ﰡ���� �ҳฦ ���� �� �� �ʽó� ���ճ�(����ҳ)���̶�� �� �� �� �־���.
�ҳ�� ���￡�� ���� ��װ� ���峭�� �ϰ� �ִ� ���̴�. ���Ｍ�� �̷� ���ﹰ��
���� ���ϱ⳪ �� �� ��. ���� ��ĥ° �ҳ��, �б����� ���ƿ��� �濡 ���峭�̾���.
�׷���, �������� ���� �⽾���� �� ����, ������ ¡�˴ٸ� �Ѱ�� �ɾƼ� �ϰ� �ִ�.
�ҳ��� ����Ͽ� �ɾ� ���ȴ�. �ҳడ ��Ű�⸦ ��ٸ��ڴ� ���̴�.
���� �������� ����� �־�, �ҳడ ���� ���� �־���.
 - Ȳ������ �ҳ��� ��

I say to you today, my friends, that in spite of the difficulties and
frustrations of the moment, I still have a dream. It is a dream deeply rooted in
the American dream.

I have a dream that one day this nation will rise up and live out the true
meaning of its creed: "We hold these truths to be self-evident: that all men are
created equal."

I have a dream today.
- ��ƾ���� ŷ ����� I have a dream ������
</pre>
</it:mark>
<form>
    <input type="text" name="word">
    <input type="submit" value="�˻�">
</form>