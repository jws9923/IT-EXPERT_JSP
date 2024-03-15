<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>
<pre>
default locale : <%= response.getLocale() %>
set locale : ko <fmt:setLocale value="ko" />
now: <%= response.getLocale() %>
set locale : ja <fmt:setLocale value="ja" />
now: <%= response.getLocale() %>
set locale : en <fmt:setLocale value="en" />
now: <%= response.getLocale() %>
</pre>