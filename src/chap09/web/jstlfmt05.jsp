<%@ page pageEncoding="MS949" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<pre><fmt:setLocale value="ko_KR"/>
number  : <fmt:formatNumber value="9876543.61" type="number"/>
currency: <fmt:formatNumber value="9876543.61" type="currency"/>
percent : <fmt:formatNumber type="percent">9876543.61</fmt:formatNumber>

pattern=".000"    :<fmt:formatNumber value="9876543.61" pattern=".000" />
pattern="#,#00.0#":<fmt:formatNumber value="9876543.612345" pattern="#,#00.0#"/>

<jsp:useBean id="now" class="java.util.Date"/>
<c:out value="${now}"/>
date: <fmt:formatDate value="${now}" type="date"/>
time: <fmt:formatDate value="${now}" type="time"/>
both: <fmt:formatDate value="${now}" type="both"/>

default:<fmt:formatDate value="${now}"
            type="both" dateStyle="default" timeStyle="default"/>
short  :<fmt:formatDate value="${now}"
            type="both" dateStyle="short"   timeStyle="short"  />
medium :<fmt:formatDate value="${now}"
            type="both" dateStyle="medium"  timeStyle="medium" />
long   :<fmt:formatDate value="${now}"
            type="both" dateStyle="long"    timeStyle="long"   />
full   :<fmt:formatDate value="${now}"
            type="both" dateStyle="full"    timeStyle="full"   />

pattern="yyyy년MM월dd일 HH시mm분ss초"
         <fmt:formatDate value="${now}" type="both"
            pattern="yyyy년MM월dd일 HH시mm분ss초"/>
</pre>