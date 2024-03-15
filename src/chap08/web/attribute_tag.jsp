<%@ page pageEncoding="MS949" info="속성전달 태그 적용" %>
<%@ taglib prefix="it1" uri="/WEB-INF/tld/simple-taglib.tld" %>
<%@ taglib prefix="it" uri="/WEB-INF/tld/attribute-taglib.tld" %>
<it1:reqEncode/>
<META HTTP-EQUIV="Content-type" CONTENT="text/html;charset=ksc5601">
찾는 단어에 표시를 하는 태그입니다.
<it:mark word='<%= request.getParameter("word") %>'>
<pre>
소년은 개울가에서 소녀를 보자 곧 윤 초시네 증손녀(曾孫女)딸이라는 걸 알 수 있었다.
소녀는 개울에다 손을 잠그고 물장난을 하고 있는 것이다. 서울서는 이런 개울물을
보지 못하기나 한 듯 이. 벌써 며칠째 소녀는, 학교에서 돌아오는 길에 물장난이었다.
그런데, 어제까지 개울 기슭에서 하 더니, 오늘은 징검다리 한가운데 앉아서 하고 있다.
소년은 개울둑에 앉아 버렸다. 소녀가 비키기를 기다리자는 것이다.
요행 지나가는 사람이 있어, 소녀가 길을 비켜 주었다.
 - 황순원의 소나기 中

I say to you today, my friends, that in spite of the difficulties and
frustrations of the moment, I still have a dream. It is a dream deeply rooted in
the American dream.

I have a dream that one day this nation will rise up and live out the true
meaning of its creed: "We hold these truths to be self-evident: that all men are
created equal."

I have a dream today.
- 마틴루터 킹 목사의 I have a dream 연설中
</pre>
</it:mark>
<form>
    <input type="text" name="word">
    <input type="submit" value="검색">
</form>